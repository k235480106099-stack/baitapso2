USE [QuanLyThuVien_K235480106099];
GO

DECLARE @SoTienNop MONEY = 200000; -- Giả sử khách đưa 200k
DECLARE @MaNo INT, @TienNo MONEY, @TenNo NVARCHAR(100);

-- Khai báo Cursor
DECLARE cur_TraNo CURSOR FOR 
    SELECT MaNo, TenNo, SoTien FROM KhoanNo ORDER BY UuTien ASC;

OPEN cur_TraNo;
FETCH NEXT FROM cur_TraNo INTO @MaNo, @TenNo, @TienNo;

WHILE @@FETCH_STATUS = 0 AND @SoTienNop > 0
BEGIN
    IF @SoTienNop >= @TienNo
    BEGIN
        PRINT N'>>> Đã trả hết khoản: ' + @TenNo + N' (Số tiền: ' + CAST(@TienNo AS VARCHAR) + ')';
        SET @SoTienNop = @SoTienNop - @TienNo;
    END
    ELSE
    BEGIN
        PRINT N'>>> Trả được một phần: ' + @TenNo + N' (Số tiền trả: ' + CAST(@SoTienNop AS VARCHAR) + ')';
        SET @SoTienNop = 0; -- Hết sạch tiền nộp
    END

    FETCH NEXT FROM cur_TraNo INTO @MaNo, @TenNo, @TienNo;
END

CLOSE cur_TraNo;
DEALLOCATE cur_TraNo;
GO
