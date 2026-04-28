USE [QuanLyThuVien_K235480106099];
GO

-------------------------------------------------------------------------------
-- PHẦN 1: CHUẨN BỊ MÔI TRƯỜNG (Lịch sử thanh toán)
-------------------------------------------------------------------------------
IF OBJECT_ID('LichSuThanhToan', 'U') IS NOT NULL DROP TABLE LichSuThanhToan;
CREATE TABLE LichSuThanhToan (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    MaNo INT,
    SoTienTra MONEY,
    NgayGiaoDich DATETIME DEFAULT GETDATE(),
    GhiChu NVARCHAR(255)
);
GO

-------------------------------------------------------------------------------
-- PHẦN 2: SCRIPT XỬ LÝ PHÂN BỔ NỢ CHI TIẾT
-------------------------------------------------------------------------------
-- 1. Khai báo các biến cấu hình ban đầu
DECLARE @SoTienKhachDua MONEY = 500000; -- Số tiền giả định
DECLARE @SoDuHienTai MONEY;
DECLARE @MaNo INT, @TenNo NVARCHAR(100), @TienNoGốc MONEY, @UuTien INT;
DECLARE @SoTienThucTra MONEY;
DECLARE @Count INT = 0;

SET @SoDuHienTai = @SoTienKhachDua;

-- 2. Kiểm tra tính hợp lệ của dữ liệu đầu vào
PRINT N'=====================================================';
PRINT N'BẮT ĐẦU TIẾN TRÌNH PHÂN BỔ DÒNG TIỀN TỰ ĐỘNG';
PRINT N'Thời gian: ' + CAST(GETDATE() AS VARCHAR);
PRINT N'Số tiền khách nộp: ' + CAST(@SoTienKhachDua AS VARCHAR) + ' VNĐ';
PRINT N'=====================================================';

IF @SoTienKhachDua <= 0
BEGIN
    PRINT N'LỖI: Số tiền nộp không hợp lệ. Vui lòng kiểm tra lại.';
    RETURN;
END

-- 3. Khai báo Cursor với các tùy chọn nâng cao
-- Duyệt qua danh sách nợ theo thứ tự ưu tiên quan trọng nhất
DECLARE cur_PhanBoNo CURSOR FOR 
    SELECT MaNo, TenNo, SoTien, UuTien 
    FROM KhoanNo 
    ORDER BY UuTien ASC;

-- 4. Sử dụng khối TRY...CATCH để bẫy lỗi hệ thống
BEGIN TRY
    OPEN cur_PhanBoNo;

    -- Lấy dòng dữ liệu đầu tiên
    FETCH NEXT FROM cur_PhanBoNo INTO @MaNo, @TenNo, @TienNoGốc, @UuTien;

    -- 5. Vòng lặp xử lý logic nghiệp vụ chính
    WHILE @@FETCH_STATUS = 0 AND @SoDuHienTai > 0
    BEGIN
        SET @Count = @Count + 1;
        PRINT N'--- Đang xử lý khoản nợ thứ ' + CAST(@Count AS VARCHAR) + ' ---';

        -- Trường hợp A: Số tiền dư đủ để thanh toán dứt điểm khoản nợ
        IF @SoDuHienTai >= @TienNoGốc
        BEGIN
            SET @SoTienThucTra = @TienNoGốc;
            SET @SoDuHienTai = @SoDuHienTai - @TienNoGốc;

            -- Cập nhật bảng gốc (Thực hiện hành động thật)
            UPDATE KhoanNo SET SoTien = 0 WHERE MaNo = @MaNo;

            -- Lưu vào nhật ký hệ thống
            INSERT INTO LichSuThanhToan (MaNo, SoTienTra, GhiChu)
            VALUES (@MaNo, @SoTienThucTra, N'Thanh toán hoàn tất');

            PRINT N' + Khoản nợ: ' + @TenNo;
            PRINT N' + Trạng thái: ĐÃ XÓA NỢ';
            PRINT N' + Số dư còn lại: ' + CAST(@SoDuHienTai AS VARCHAR);
        END
        
        -- Trường hợp B: Số tiền dư chỉ đủ trả một phần
        ELSE
        BEGIN
            SET @SoTienThucTra = @SoDuHienTai;
            
            -- Cập nhật bảng gốc: Trừ bớt nợ
            UPDATE KhoanNo SET SoTien = SoTien - @SoDuHienTai WHERE MaNo = @MaNo;

            -- Lưu vào nhật ký hệ thống
            INSERT INTO LichSuThanhToan (MaNo, SoTienTra, GhiChu)
            VALUES (@MaNo, @SoTienThucTra, N'Thanh toán một phần');

            PRINT N' + Khoản nợ: ' + @TenNo;
            PRINT N' + Trạng thái: TRẢ MỘT PHẦN';
            PRINT N' + Số tiền đã trừ: ' + CAST(@SoDuHienTai AS VARCHAR);
            
            SET @SoDuHienTai = 0; -- Hết tiền sau khi trả phần này
        END

        PRINT '-----------------------------------------------------';

        -- Tiến đến bản ghi tiếp theo
        FETCH NEXT FROM cur_PhanBoNo INTO @MaNo, @TenNo, @TienNoGốc, @UuTien;
    END

    -- 6. Kết luận sau khi kết thúc vòng lặp
    PRINT N'KẾT THÚC GIAO DỊCH.';
    PRINT N'Tổng số khoản nợ đã xử lý: ' + CAST(@Count AS VARCHAR);
    PRINT N'Số dư trả lại cho khách: ' + CAST(@SoDuHienTai AS VARCHAR);
    PRINT N'=====================================================';

    -- 7. Đóng và giải phóng tài nguyên
    CLOSE cur_PhanBoNo;
    DEALLOCATE cur_PhanBoNo;

END TRY
BEGIN CATCH
    -- Xử lý nếu có lỗi bất ngờ xảy ra (Ví dụ mất điện, lỗi server)
    PRINT N'!!! ĐÃ CÓ LỖI XẢY RA TRONG QUÁ TRÌNH XỬ LÝ !!!';
    PRINT N'Mã lỗi: ' + CAST(ERROR_NUMBER() AS VARCHAR);
    PRINT N'Nội dung lỗi: ' + ERROR_MESSAGE();

    -- Đảm bảo Cursor luôn được đóng kể cả khi lỗi
    IF CURSOR_STATUS('global', 'cur_PhanBoNo') >= 0
    BEGIN
        CLOSE cur_PhanBoNo;
        DEALLOCATE cur_PhanBoNo;
    END
END CATCH
GO

-- 8. Kiểm tra kết quả thực tế sau khi chạy script
SELECT * FROM KhoanNo;
SELECT * FROM LichSuThanhToan;