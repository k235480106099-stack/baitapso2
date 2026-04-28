# BÀI KIỂM TRA SỐ 2: HỆ QUẢN TRỊ CSDL SQL SERVER 2025
## THÔNG TIN SINH VIÊN:
### HỌ VÀ TÊN: PHẠM THANH SƠN
### MÃ SV: K235480106099
### LỚP: K59KMT.K01
# YÊU CẦU BÀI TOÁN :
### Phần 1: Thiết kế và Khởi tạo Cấu trúc Dữ liệu (Kiến thức 6, 7)

* Sinh viên tự chọn một chủ đề quản lý (Ví dụ: Quản lý thư viện, Quản lý khách sạn, hoặc Quản lý dự án, HOẶC BẤT KỲ BÀI TOÁN QUẢN LÝ NÀO KHÁC).

* Tạo một Database mới với tên [Tên dự án]_[MaSV]. //LƯU Ý PHẢI CÓ MÃ SV CÁ NHÂN Ở TÊN CỦA DB ĐÚNG NHƯ YÊU CẦU, vd: QuanLyKhachSan_K123456789

* Tạo ít nhất 3 bảng có quan hệ với nhau. Yêu cầu:

* Sử dụng đa dạng các kiểu dữ liệu (Số nguyên, số thực, chuỗi ký tự Unicode, ngày tháng, tiền tệ, ...).

* Áp dụng đúng quy tắc đặt tên (BướuLạcĐà).

* Sử dụng cặp ngoặc [ ] để bọc tên bảng và tên trường trong script khởi tạo.

* Có giải thích chỗ nào là PK, chỗ nào là FK, trường nào có ràng buộc cứng CK (ví dụ điểm từ 0..10),...

### Phần 2: Xây dựng Function (Kiến thức 8, 9)

* Hãy cho biết trong SQL Server có những loại function build_in (hàm có sẵn) nào, nêu 1 vài system function build_in mà em tìm hiểu được (ko cần nhiều, cần đặc sắc theo góc nhìn của em), cho SQL khai thác các hàm đó.

*  do người dùng tự viết trong SQL thường mang mục đích gì? Nó có những loại nào? Mỗi loại thường được dùng khi nào? Tại sao có nhiều system function rồi mà vẫn cần tự viết fn riêng?

* Viết 01 Scalar Function (Hàm trả về một giá trị): Đưa ra 1 logic cho cơ sở dữ liệu của em, mà cần dùng đến function này. (SV TỰ NGHĨ RA YÊU CẦU CỦA HÀM VÀ VIẾT HÀM GIẢI QUYẾT NÓ)

Sau khi đã có hàm, viết câu lệnh sql khai thác hàm đó.

* Viết 01 Inline Table-Valued Function: Trả về danh sách các bản ghi theo một điều kiện lọc cụ thể (SV TỰ NGHĨ RA YÊU CẦU CỦA HÀM VÀ VIẾT HÀM GIẢI QUYẾT NÓ)

Sau khi đã có hàm, viết câu lệnh sql khai thác hàm đó.

* Viết 01 Multi-statement Table-Valued Function: Thực hiện xử lý logic phức tạp bên trong (có sử dụng biến bảng) trước khi trả về kết quả. (SV TỰ NGHĨ RA YÊU CẦU CỦA HÀM VÀ VIẾT HÀM GIẢI QUYẾT NÓ)

Sau khi đã có hàm, viết câu lệnh sql khai thác hàm đó.

### Phần 3: Xây dựng Store Procedure (Kiến thức 10)

* Trong SQL Server có những SP có sẵn nào? nêu 1 vài system sp mà em tìm hiểu được, giải thích cách dùng chúng.

* Viết 01 Store Procedure đơn giản để thực hiện lệnh INSERT hoặc UPDATE dữ liệu, có kiểm tra điều kiện logic (SV TỰ NGHĨ RA YÊU CẦU CỦA SP VÀ VIẾT SP GIẢI QUYẾT NÓ)

* Viết 01 Store Procedure có sử dụng tham số OUTPUT để trả về một giá trị tính toán (SV TỰ NGHĨ RA YÊU CẦU CỦA SP VÀ VIẾT SP GIẢI QUYẾT NÓ, SP NÀY CÓ DÙNG THAM SỐ LOẠI OUTPUT)

* Viết 01 Store Procedure trả về một tập kết quả (Result set) từ lệnh SELECT sau khi đã join nhiều bảng. (SV TỰ NGHĨ RA YÊU CẦU CỦA SP VÀ VIẾT SP GIẢI QUYẾT NÓ)

### Phần 4: Trigger và Xử lý logic nghiệp vụ (Kiến thức 11)

* Viết 01 Trigger để tự động làm gì đó tại 1 bảng B khi mà dữ liệu thay đổi dữ liệu ở bảng A. Logic giải quyết do sv tự nghĩ ra, sao cho thực tế và thuyết phục.

* Thử viết Trigger cho Bảng A : Khi insert thì cập nhật dữ liệu vào bảng B; sau đó viết trigger cho bảng B để khi B được cập nhật thì cập nhật sang bảng A : Quan sát các thông báo (nếu có) của hệ thống, giải thích các thông báo đó (nếu có). Đưa ra nhật xét cuối cùng về tình trạng này.

### Phần 5: Cursor và Duyệt dữ liệu (Kiến thức 11)

* Viết một đoạn script sử dụng CURSOR để duyệt qua danh sách của 1 câu lệnh SQL dạng SELECT, duyệt qua từng bản ghi, xử lý riêng từng bản ghi (THEO LOGIC SV TỰ ĐẶT RA: SAO CHO HỢP LÝ VÀ THUYẾT PHỤC)

* Tìm cách không sử dụng CURSOR để giải quyết bài toán mà em đã dùng CURSOR mới giải quyết được ở trên. thử so sánh tốc độ giữa có dùng cursor và không dùng cursor (nếu cùng kết quả) thì thời gian xử lý cái nào nhanh hơn, cần ảnh chụp màn hình minh chứng.

* Nếu vẫn tìm được cách dùng SQL để giải quyết vấn đề mà ko cần CURSOR: thử nghĩ bài toán khác, mà chỉ CURSOR mới giải quyết được, còn SQL rất khó giải quyết đc (theo logic suy nghĩ của em)
* 
# PHẦN I: KHỞI TẠO BẢNG
### 1. tạo database cơ sở dữ liệu

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/3a206985-d9df-44ec-850b-36531884f958" />

### 2. bảng[sach, DocGia, PhieuMuon].

a. Bảng [Sach] (Sách): Lưu trữ thông tin về các cuốn sách trong thư viện.

Có ràng buộc CHECK (GiaThue >= 0) để đảm bảo giá thuê không bị âm.

Sử dụng kiểu dữ liệu MONEY cho tiền tệ và NVARCHAR cho tiếng Việt có dấu.

b. Bảng [DocGia] (Độc giả): Lưu trữ thông tin cá nhân của người mượn sách như Họ tên, Ngày sinh và Số điện thoại.

c. Bảng [PhieuMuon] (Phiếu mượn): Đây là bảng quan trọng nhất đóng vai trò kết nối (nối bảng Sach và DocGia).

Chứa các Khóa ngoại (Foreign Key) trỏ tới mã sách và mã độc giả.

Có trường TrangThai mặc định là "Đang mượn" và NgayMuon tự động lấy thời gian hiện tại.
```sql
USE [QuanLyThuVien_K235480106099];
GO

-- 1. Tạo bảng Sách
CREATE TABLE [Sach] (
    [MaSach] INT PRIMARY KEY IDENTITY(1,1),
    [TenSach] NVARCHAR(200) NOT NULL,
    [TacGia] NVARCHAR(100),
    [GiaThue] MONEY CONSTRAINT [CK_GiaThue] CHECK ([GiaThue] >= 0),
    [SoLuongTon] INT DEFAULT 0
);

-- 2. Tạo bảng Độc Giả
CREATE TABLE [DocGia] (
    [MaDocGia] INT PRIMARY KEY IDENTITY(1,1),
    [HoTen] NVARCHAR(100) NOT NULL,
    [NgaySinh] DATE,
    [SoDienThoai] VARCHAR(15)
);

-- 3. Tạo bảng Phiếu Mượn
CREATE TABLE [PhieuMuon] (
    [MaPhieu] INT PRIMARY KEY IDENTITY(1,1),
    [MaDocGia] INT CONSTRAINT [FK_PhieuMuon_DocGia] FOREIGN KEY REFERENCES [DocGia]([MaDocGia]),
    [MaSach] INT CONSTRAINT [FK_PhieuMuon_Sach] FOREIGN KEY REFERENCES [Sach]([MaSach]),
    [NgayMuon] DATETIME DEFAULT GETDATE(),
    [NgayTra] DATETIME,
    [TrangThai] NVARCHAR(50) DEFAULT N'Đang mượn'
);

-- 4. Thêm dữ liệu mẫu
INSERT INTO [Sach] ([TenSach], [TacGia], [GiaThue], [SoLuongTon]) 
VALUES (N'Lập trình SQL', N'Nguyễn Văn A', 5000, 10), (N'Dữ liệu lớn', N'Trần Thị B', 8000, 5);

INSERT INTO [DocGia] ([HoTen], [NgaySinh], [SoDienThoai]) 
VALUES (N'Phạm Thanh Sơn', '2004-01-01', '0912345678');
GO
```
### Khóa chính (Primary Key - PK)

Định danh duy nhất cho mỗi đối tượng, giúp các Store Procedure như [sp_ThemDocGia] không bị nhầm lẫn dữ liệu.

[MaSach] (Bảng [Sach]): Mã duy nhất cho từng đầu sách.

[MaDocGia] (Bảng [DocGia]): Mã định danh riêng cho mỗi sinh viên/người mượn.

[MaPhieu] (Bảng [PhieuMuon]): Mã số định danh cho mỗi lượt mượn sách thành công.

### Khóa ngoại (Foreign Key - FK)

Thiết lập mối quan hệ giữa các thực thể, là nền tảng để thực hiện lệnh JOIN trong Store Procedure [sp_DanhSachMuonChiTiet].

[FK_PhieuMuon_DocGia]: Cột [MaDocGia] trong bảng [PhieuMuon] trỏ về [MaDocGia] của bảng [DocGia]. Đảm bảo không thể tạo phiếu mượn cho một người chưa đăng ký thẻ thư viện.

[FK_PhieuMuon_Sach]: Cột [MaSach] trong bảng [PhieuMuon] trỏ về [MaSach] của bảng [Sach]. Đảm bảo cuốn sách được mượn phải tồn tại trong danh mục của thư viện.

 ### Ràng buộc cứng (Check Constraint - CK)
 
Đưa ra quy tắc logic để bảo vệ dữ liệu khỏi các giá trị vô lý.

[CK_GiaThue]: Quy định [GiaThue] >= 0. Điều này cực kỳ quan trọng vì nếu giá thuê âm, các hàm tính toán tiền nong sẽ bị sai lệch hoàn toàn.

Logic bổ sung trong SP: Trong Store Procedure [sp_ThemDocGia], chúng ta có sử dụng một dạng kiểm tra logic tương tự Check Constraint bằng lệnh IF (LEN(@SDT) < 10). Đây là lớp bảo vệ mức ứng dụng để đảm bảo số điện thoại nhập vào có độ dài hợp lệ.

 ### Các ràng buộc hỗ trợ khác
 
NOT NULL: Áp dụng cho [HoTen] và [TenSach]. Không thể có một độc giả không tên hay một cuốn sách không có tiêu đề.

IDENTITY(1,1): Giúp các mã số tự động tăng, tránh việc người dùng nhập trùng mã PK thủ công.

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/b188248a-3596-4dd7-82ad-4c47a79e797b" />

# PHẦN II: XÂY DỰNG HÀM FUNCTION

### Tìm hiểu về System Function (Hàm build-in) trong SQL Server

Trong SQL Server, các hàm có sẵn (build-in functions) rất đa dạng, được chia thành các nhóm chính sau:

Hàm giá trị đơn (Scalar Functions): Trả về một giá trị duy nhất (Toán học, chuỗi, ngày tháng, cấu hình hệ thống).

Hàm tập hợp (Aggregate Functions): Thực hiện tính toán trên một tập hợp các giá trị và trả về một giá trị duy nhất (như SUM, AVG, COUNT).

Hàm xếp hạng (Ranking Functions): Dùng để xếp thứ tự các bản ghi (như ROW_NUMBER, RANK).

Hàm hệ thống (System Functions): Trả về thông tin về các đối tượng và cài đặt của SQL Server.

*Một vài System Function đặc sắc:* 

Dưới đây là 3 hàm mình thấy hữu ích nhất khi quản lý dữ liệu:

GETDATE(): Hàm kinh điển để lấy thời gian thực của hệ thống tại thời điểm truy vấn.

COALESCE(val1, val2, ...): Hàm này cực kỳ hay, nó trả về giá trị không NULL đầu tiên trong danh sách. Rất hữu ích khi bạn muốn hiển thị một giá trị thay thế nếu dữ liệu bị trống.

FORMAT(): Cho phép định dạng dữ liệu (ngày tháng, tiền tệ) theo một mẫu cụ thể (ví dụ định dạng tiền VNĐ hoặc ngày kiểu Việt Nam dd/MM/yyyy).

### Tìm hiểu về Hàm do người dùng tự định nghĩa (User-Defined Functions - UDF)

*1. Mục đích của hàm tự viết trong SQL là gì?*

Hàm tự định nghĩa (UDF) thường được viết nhằm các mục đích chính sau:

Đóng gói logic nghiệp vụ: Chuyển các quy tắc tính toán phức tạp của thực tế (ví dụ: công thức tính tiền phạt trả sách muộn của thư viện) thành một đơn vị mã nguồn có thể gọi lại nhiều lần.

Tăng tính tái sử dụng: Thay vì viết lại một đoạn code tính toán dài dòng trong nhiều câu lệnh SELECT hoặc WHERE, ta chỉ cần gọi tên hàm.

Làm sạch mã nguồn: Giúp các câu lệnh SQL chính trở nên ngắn gọn, dễ đọc và dễ bảo trì hơn.

*2. Các loại hàm tự viết và thời điểm sử dụng*

Dựa theo kiến thức đã học, UDF được chia thành 3 loại chính:

Scalar Function (Hàm giá trị đơn):

Đặc điểm: Trả về duy nhất một giá trị (số, chuỗi, ngày tháng).

Khi nào dùng: Dùng để thực hiện các phép tính toán trên từng ô dữ liệu, như chuyển đổi tiền tệ, tính tổng giá trị đơn hàng sau thuế, hoặc xử lý chuỗi.

Inline Table-Valued Function (Hàm trả về bảng đơn giản):

Đặc điểm: Trả về một tập kết quả dưới dạng bảng từ duy nhất một câu lệnh SELECT.

Khi nào dùng: Dùng khi cần lọc dữ liệu theo các tham số linh hoạt mà vẫn muốn có tốc độ xử lý nhanh (do SQL Server tối ưu hóa nó như một View có tham số).

Multi-statement Table-Valued Function (Hàm trả về bảng phức tạp):

Đặc điểm: Trả về một bảng nhưng bên trong chứa nhiều câu lệnh xử lý, có khai báo biến bảng và dùng các cấu trúc điều khiển (IF, WHILE).

Khi nào dùng: Dùng cho các bài toán thống kê phức tạp, cần lọc qua nhiều bước hoặc tính toán trung gian trước khi đưa ra kết quả cuối cùng.

*3. Tại sao cần tự viết Function khi đã có sẵn System Function?*

Mặc dù SQL Server cung cấp hàng trăm hàm hệ thống mạnh mẽ, việc tự viết hàm vẫn là thiết yếu vì:

Tính đặc thù của dự án: Các hàm hệ thống mang tính chất chung (như lấy giờ, tính căn bậc hai). Tuy nhiên, mỗi dự án có quy tắc riêng (ví dụ: cách tính điểm ưu tiên cho sinh viên TNUT) mà chỉ UDF mới giải quyết được.

Khả năng tùy biến: UDF cho phép kết hợp nhiều hàm hệ thống lại với nhau để tạo ra một logic mới phù hợp với yêu cầu của giảng viên hoặc khách hàng.

Bảo mật và Phân quyền: Ta có thể cho phép người dùng thực thi một hàm để lấy kết quả tính toán mà không cần cho họ quyền truy cập trực tiếp vào các bảng dữ liệu gốc.
### Thực hành xây dựng các loại hàm

1. Viết Scalar Function (Hàm trả về một giá trị)
```sql
USE [QuanLyThuVien_K235480106099];
GO

-- 1. Xóa hàm nếu đã tồn tại để tránh lỗi khi chạy lại
IF OBJECT_ID('fn_TinhTienThueThucTe', 'FN') IS NOT NULL
    DROP FUNCTION [fn_TinhTienThueThucTe];
GO

-- 2. ĐỊNH NGHĨA HÀM (Scalar Function)
CREATE FUNCTION [fn_TinhTienThueThucTe] (@MaSach INT, @SoNgay INT)
RETURNS MONEY
AS
BEGIN
    DECLARE @GiaBanDau MONEY;
    DECLARE @ThanhTien MONEY;

    -- Lấy giá thuê từ bảng Sach dựa trên PK [MaSach]
    SELECT @GiaBanDau = [GiaThue] FROM [Sach] WHERE [MaSach] = @MaSach;

    -- Logic: Nếu mượn > 7 ngày thì giảm 10% tổng hóa đơn
    IF (@SoNgay > 7)
        SET @ThanhTien = (@GiaBanDau * @SoNgay) * 0.9;
    ELSE
        SET @ThanhTien = (@GiaBanDau * @SoNgay);

    RETURN @ThanhTien;
END;
GO

-- 3. KHAI THÁC VÀ HIỂN THỊ KẾT QUẢ TRONG CÙNG 1 LẦN CHẠY
SELECT 
    S.[MaSach] AS [PK_Sach],
    S.[TenSach],
    S.[GiaThue] AS [DonGia],
    10 AS [SoNgayGiaDinh],
    dbo.[fn_TinhTienThueThucTe](S.[MaSach], 10) AS [TongTien_SauGiamGia]
FROM [Sach] S;
GO
```

Hàm này nhận vào một giá trị để tính toán số ngày.

Tham số đầu vào (@MaPhieu): Đây chính là PK của bảng [PhieuMuon]. Chúng ta truyền PK vào để hàm biết chính xác cần tính số ngày cho phiếu mượn nào.

Giá trị trả về: Một số nguyên (INT) – không phải là khóa.
<img width="1916" height="1079" alt="image" src="https://github.com/user-attachments/assets/1cb28f10-290e-470e-b6ad-00cf637f69fd" />


2. Viết Inline Table-Valued Function (Hàm trả về bảng đơn giản)
```sql
USE [QuanLyThuVien_K235480106099];
GO

-- 1. Xóa hàm nếu đã tồn tại
IF OBJECT_ID('fn_LayDanhSachMuonCuaDocGia', 'IF') IS NOT NULL
    DROP FUNCTION [fn_LayDanhSachMuonCuaDocGia];
GO

-- 2. ĐỊNH NGHĨA HÀM (Inline Table-Valued Function)
-- Hàm này trả về danh sách các sách mà một độc giả cụ thể đang mượn
CREATE FUNCTION [fn_LayDanhSachMuonCuaDocGia] (@MaDG INT)
RETURNS TABLE
AS
RETURN (
    SELECT 
        P.[MaPhieu] AS [PK_PhieuMuon],   -- Khóa chính của bảng PhieuMuon
        D.[HoTen] AS [TenDocGia],
        S.[TenSach] AS [TenSachMuon],
        P.[NgayMuon],
        P.[MaDocGia] AS [FK_DocGia],    -- Khóa ngoại trỏ tới bảng DocGia
        P.[MaSach] AS [FK_Sach]         -- Khóa ngoại trỏ tới bảng Sach
    FROM [PhieuMuon] P
    INNER JOIN [DocGia] D ON P.[MaDocGia] = D.[MaDocGia]
    INNER JOIN [Sach] S ON P.[MaSach] = S.[MaSach]
    WHERE P.[MaDocGia] = @MaDG
);
GO

-- 3. HIỂN THỊ KẾT QUẢ 
-- Ví dụ: Lấy danh sách mượn của độc giả có Mã số 1
SELECT * FROM dbo.[fn_LayDanhSachMuonCuaDocGia](1);
GO
 ```

Tham số đầu vào (@MaDG): Đây là giá trị dùng để lọc theo PK [MaDocGia] của bảng [DocGia].

Sử dụng Khóa ngoại (FK): Trong thân hàm, lệnh INNER JOIN sử dụng các FK của bảng [PhieuMuon] (là [MaDocGia] và [MaSach]) để kết nối chính xác thông tin từ bảng cha.

Kết quả trả về: * Cột [PK_PhieuMuon]: Cho biết mã định danh duy nhất của dòng dữ liệu đó.

Cột [FK_DocGia] và [FK_Sach]: Hiển thị để chứng minh mối liên kết logic giữa các bảng vẫn được duy trì trong hàm.
<img width="1916" height="1079" alt="image" src="https://github.com/user-attachments/assets/fa5d3f42-9928-4d6c-8eeb-a399faa448cd" />

Viết Multi-statement Table-Valued Function (Hàm trả về bảng phức tạp)
```sql
USE [QuanLyThuVien_K235480106099];
GO

-- 1. Xóa hàm nếu đã tồn tại
IF OBJECT_ID('fn_ThongKeChiTietMuon', 'TF') IS NOT NULL
    DROP FUNCTION [fn_ThongKeChiTietMuon];
GO

-- 2. ĐỊNH NGHĨA HÀM (Multi-statement Table-Valued Function)
CREATE FUNCTION [fn_ThongKeChiTietMuon]()
RETURNS @BangThongKe TABLE (
    [MaPhieu_PK] INT,           -- Khóa chính từ bảng PhieuMuon
    [TenDocGia] NVARCHAR(100),
    [TenSach] NVARCHAR(200),
    [MaDocGia_FK] INT,          -- Khóa ngoại trỏ tới bảng DocGia
    [MaSach_FK] INT,            -- Khóa ngoại trỏ tới bảng Sach
    [TinhTrang] NVARCHAR(100)
)
AS
BEGIN
    -- Chèn dữ liệu vào biến bảng tạm @BangThongKe
    INSERT INTO @BangThongKe
    SELECT 
        P.[MaPhieu],
        D.[HoTen],
        S.[TenSach],
        P.[MaDocGia],
        P.[MaSach],
        CASE 
            WHEN P.[NgayTra] IS NULL THEN N'Chưa trả (Đang quá hạn)'
            ELSE N'Đã hoàn thành thủ tục trả'
        END
    FROM [PhieuMuon] P
    INNER JOIN [DocGia] D ON P.[MaDocGia] = D.[MaDocGia]
    INNER JOIN [Sach] S ON P.[MaSach] = S.[MaSach];

    -- Có thể thêm các lệnh xử lý khác ở đây trước khi RETURN
    
    RETURN;
END;
GO

-- 3. HIỂN THỊ KẾT QUẢ 
SELECT * FROM dbo.[fn_ThongKeChiTietMuon]();
GO
```
[MaPhieu_PK]: Đây là Khóa chính được trích xuất từ bảng [PhieuMuon]. Việc hiển thị cột này giúp định danh duy nhất cho mỗi dòng trong báo cáo thống kê.

[MaDocGia_FK] và [MaSach_FK]: Đây là các Khóa ngoại. Trong thân hàm, tôi đã sử dụng hai khóa này để thực hiện phép INNER JOIN. Nếu không có các khóa ngoại này, chúng ta sẽ không thể kết nối chính xác tên của độc giả và tên cuốn sách tương ứng.

Tính chất của hàm: Khác với Inline Function, hàm này sử dụng một biến bảng tạm (@BangThongKe). Tôi đã khai báo cấu trúc bảng này thủ công để kiểm soát chính xác các kiểu dữ liệu và tên cột trả về.

<img width="1902" height="1075" alt="image" src="https://github.com/user-attachments/assets/2587eb4b-893a-47e2-b5cd-cfe93d39fe91" />

# PHẦM III: XÂY DỰNG STORE PROCEDURE

### 1. Tìm hiểu về System Store Procedure (SP có sẵn)

Trong SQL Server, các System Store Procedure là các thủ tục được Microsoft viết sẵn để giúp người dùng quản trị hệ thống, lấy thông tin về các đối tượng hoặc thực hiện các thiết lập cấu hình.

Các SP này thường bắt đầu bằng tiền tố sp_ và được lưu trữ trong database hệ thống (thường là master).

### Một vài System SP đặc sắc:

*sp_help:*

Cách dùng: EXEC sp_help 'TenBang';

Giải thích: Đây là hàm "tra cứu nhanh". Nó trả về mọi thông tin chi tiết của một bảng như: các cột, kiểu dữ liệu, và đặc biệt là danh sách các PK, FK và Check Constraints đang áp dụng trên bảng đó.

*sp_helptext:*

Cách dùng: EXEC sp_helptext 'TenFunction_Hoac_TenSP';

Giải thích: Dùng để xem lại mã nguồn (code SQL) của các Function hoặc Store Procedure mà bạn đã tạo. Rất hữu ích khi bạn quên mất mình đã viết logic bên trong như thế nào.

*sp_rename:*

Cách dùng: EXEC sp_rename 'TenCu', 'TenMoi';

Giải thích: Dùng để đổi tên một đối tượng (bảng, cột, chỉ mục) mà không cần phải xóa đi tạo lại.

### Thực hành xây dựng Store Procedure
```SQL
USE [QuanLyThuVien_K235480106099];
GO

-- 1. Xóa SP nếu đã tồn tại
IF OBJECT_ID('sp_ThemSachMoi', 'P') IS NOT NULL
    DROP PROCEDURE [sp_ThemSachMoi];
GO

-- 2. Tạo Store Procedure
CREATE PROCEDURE [sp_ThemSachMoi]
    @TenSach NVARCHAR(200),
    @TacGia NVARCHAR(100),
    @GiaThue MONEY,
    @SoLuong INT
AS
BEGIN
    -- Kiểm tra logic: Giá thuê không được âm
    IF (@GiaThue < 0)
    BEGIN
        PRINT N'Lỗi: Giá thuê sách không thể là số âm!';
        RETURN; -- Thoát khỏi SP, không thực hiện INSERT
    END

    -- Kiểm tra logic: Tên sách không được để trống
    IF (@TenSach IS NULL OR @TenSach = '')
    BEGIN
        PRINT N'Lỗi: Tên sách không được để trống!';
        RETURN;
    END

    -- Thực hiện INSERT dữ liệu
    INSERT INTO [Sach] ([TenSach], [TacGia], [GiaThue], [SoLuongTon])
    VALUES (@TenSach, @TacGia, @GiaThue, @SoLuong);

    PRINT N'Thêm sách mới thành công!';
END;
GO

-- 3. Khai thác SP (Thực thi lệnh thêm sách)
-- Trường hợp 1: Thêm đúng
EXEC [sp_ThemSachMoi] N'Lập trình C#', N'Phạm Thanh Sơn', 5000, 15;

-- Trường hợp 2: Thêm sai giá (để kiểm tra logic)
EXEC [sp_ThemSachMoi] N'Sách lỗi', N'Ẩn danh', -100, 5;

-- Xem lại kết quả trong bảng
SELECT * FROM [Sach];
GO
```
PK (Primary Key): Khi thực hiện lệnh INSERT, chúng ta không cần nhập [MaSach] vì trường này đã được thiết lập là IDENTITY (tự động tăng). SP đảm bảo mỗi bản ghi mới sẽ có một PK duy nhất do hệ thống quản lý.

CK (Check Constraint): Mặc dù bảng đã có ràng buộc cứng CK trên cột GiaThue, nhưng việc kiểm tra logic IF (@GiaThue < 0) trong SP giúp người dùng nhận được thông báo lỗi thân thiện thay vì những dòng báo lỗi hệ thống khô khan.

Tính toàn vẹn: SP này đảm bảo mọi cuốn sách khi đi vào hệ thống đều phải tuân thủ đúng định dạng và quy tắc kinh doanh của thư viện.
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/9ca780a5-5a63-4e34-ba11-11b5159b7072" />

### Store Procedure với tham số OUTPUT

```sql
USE [QuanLyThuVien_K235480106099];
GO

-- 1. Xóa SP nếu đã tồn tại
IF OBJECT_ID('sp_TinhTongTienThueCuaDocGia', 'P') IS NOT NULL
    DROP PROCEDURE [sp_TinhTongTienThueCuaDocGia];
GO

-- 2. Tạo Store Procedure với tham số OUTPUT
CREATE PROCEDURE [sp_TinhTongTienThueCuaDocGia]
    @MaDG INT,
    @TongTien MONEY OUTPUT -- Khai báo tham số đầu ra
AS
BEGIN
    -- Kiểm tra xem độc giả có tồn tại không (dựa trên PK)
    IF NOT EXISTS (SELECT 1 FROM [DocGia] WHERE [MaDocGia] = @MaDG)
    BEGIN
        SET @TongTien = 0;
        PRINT N'Lỗi: Độc giả không tồn tại!';
        RETURN;
    END

    -- Tính tổng tiền dựa trên các liên kết FK trong bảng PhieuMuon
    SELECT @TongTien = SUM(S.[GiaThue])
    FROM [PhieuMuon] P
    JOIN [Sach] S ON P.[MaSach] = S.[MaSach]
    WHERE P.[MaDocGia] = @MaDG;

    -- Nếu độc giả chưa mượn sách nào, SUM sẽ là NULL, cần chuyển về 0
    SET @TongTien = ISNULL(@TongTien, 0);
END;
GO

-- 3. KHAI THÁC SP (Cách gọi tham số OUTPUT)
DECLARE @KetQua MONEY; -- Khai báo biến để nhận giá trị trả về

-- Thực thi SP cho Độc giả có MaDocGia = 1
EXEC [sp_TinhTongTienThueCuaDocGia] @MaDG = 1, @TongTien = @KetQua OUTPUT;

-- Hiển thị kết quả ra màn hình
PRINT N'Tổng tiền thuê sách của độc giả là: ' + CAST(@KetQua AS NVARCHAR(20)) + ' VNĐ';
SELECT @KetQua AS [TongTien_Output];
GO
```
Sử dụng PK (MaDocGia): SP sử dụng tham số đầu vào @MaDG để kiểm tra sự tồn tại của bản ghi trong bảng [DocGia] thông qua Khóa chính. Nếu không có PK này, chúng ta không thể xác định được độc giả cần tính tiền là ai.

Sử dụng FK (MaSach): Để tính được tiền, SP thực hiện lệnh JOIN giữa bảng [PhieuMuon] và bảng [Sach] thông qua Khóa ngoại [MaSach]. Đây là mối liên kết quan trọng nhất để lấy được đơn giá thuê từ bảng Sách.

Ràng buộc logic: Việc sử dụng ISNULL(@TongTien, 0) giúp đảm bảo kết quả trả ra luôn là một con số hợp lệ, bổ trợ cho tính đúng đắn của dữ liệu tài chính.
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/1400575a-44fb-4a70-ac28-ec036b3bf4fb" />

### Store Procedure trả về tập kết quả (JOIN nhiều bảng)

```sql
USE [QuanLyThuVien_K235480106099];
GO

-- 1. Xóa SP nếu đã tồn tại
IF OBJECT_ID('sp_BaoCaoChiTietMuonSach', 'P') IS NOT NULL
    DROP PROCEDURE [sp_BaoCaoChiTietMuonSach];
GO

-- 2. Tạo Store Procedure join 3 bảng
CREATE PROCEDURE [sp_BaoCaoChiTietMuonSach]
AS
BEGIN
    SET NOCOUNT ON; -- Tối ưu hiệu năng bằng cách tắt thông báo số dòng bị tác động

    SELECT 
        P.[MaPhieu] AS [ID_PhieuMuon],   -- PK của bảng PhieuMuon
        D.[HoTen] AS [TenDocGia],       -- Lấy từ bảng DocGia qua FK MaDocGia
        S.[TenSach] AS [TenSach],       -- Lấy từ bảng Sach qua FK MaSach
        S.[TacGia],
        P.[NgayMuon],
        P.[TrangThai]
    FROM [PhieuMuon] P
    INNER JOIN [DocGia] D ON P.[MaDocGia] = D.[MaDocGia] -- Khớp nối bằng FK MaDocGia
    INNER JOIN [Sach] S ON P.[MaSach] = S.[MaSach]      -- Khớp nối bằng FK MaSach
    ORDER BY P.[NgayMuon] DESC; -- Sắp xếp phiếu mới nhất lên đầu
END;
GO

-- 3. KHAI THÁC SP (Thực thi để xem tập kết quả)
EXEC [sp_BaoCaoChiTietMuonSach];
GO
```
Tính định danh (PK): Cột [ID_PhieuMuon] hiển thị Khóa chính giúp phân biệt các lượt mượn khác nhau, ngay cả khi cùng một người mượn cùng một cuốn sách vào các thời điểm khác nhau.

Mối quan hệ (FK): * Lệnh JOIN đầu tiên sử dụng Khóa ngoại [MaDocGia] để "tìm" đúng tên người mượn trong bảng Độc giả.

Lệnh JOIN thứ hai sử dụng Khóa ngoại [MaSach] để "truy xuất" tên sách và tác giả từ bảng Sách.

Hiệu quả: Nhờ có các FK, chúng ta tránh được việc phải lưu lặp lại tên người dùng hay tên sách vào bảng Phiếu mượn, giúp giảm thiểu dung lượng và tránh sai sót dữ liệu.
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/88182d70-fd76-4714-9730-433aa9709d20" />

# PHẦN IV: TRIGGER VÀ XỬ LÝ LOGIC NGHIỆP VỤ

### Logic nghiệp vụ (Thuyết phục & Thực tế)

Bảng A (Bảng tác động): PhieuMuon (Khi thêm một dòng mới – tức là có người mượn sách).

Bảng B (Bảng thay đổi): Sach (Số lượng tồn kho phải tự động trừ đi 1).

Mục tiêu: Đảm bảo số lượng sách trong kho luôn chính xác mà không cần nhân viên phải vào bảng Sách sửa thủ công.
```sql
USE [QuanLyThuVien_K235480106099];
GO

-- 1. Tạo Trigger tự động cập nhật số lượng sách trong kho
CREATE TRIGGER [trg_CapNhatKhoKhiMuon]
ON [PhieuMuon]
AFTER INSERT
AS
BEGIN
    -- Khai báo biến để lấy mã sách vừa được mượn từ bảng ảo [inserted]
    DECLARE @MaSachMuon INT;
    SELECT @MaSachMuon = [MaSach] FROM inserted;

    -- Thực hiện cập nhật bảng Sach (Bảng B) khi có dữ liệu mới ở PhieuMuon (Bảng A)
    UPDATE [Sach]
    SET [SoLuongTon] = [SoLuongTon] - 1
    WHERE [MaSach] = @MaSachMuon;

    PRINT N'Trigger đã tự động trừ 01 cuốn sách trong kho dữ liệu.';
END;
GO

-- 2. KIỂM TRA (TEST) TRIGGER
-- Bước A: Xem số lượng sách hiện tại (Ghi nhớ con số này)
SELECT [MaSach], [TenSach], [SoLuongTon] FROM [Sach];

-- Bước B: Thêm một phiếu mượn mới (Giả sử Độc giả 1 mượn Sách 1)
INSERT INTO [PhieuMuon] ([MaDocGia], [MaSach], [NgayMuon], [TrangThai])
VALUES (1, 1, GETDATE(), N'Đang mượn');

-- Bước C: Xem lại bảng Sách để thấy số lượng đã tự giảm
SELECT [MaSach], [TenSach], [SoLuongTon] FROM [Sach];
GO
```
Sử dụng FK: Trigger sử dụng cột [MaSach] từ bảng ảo inserted. Đây chính là Khóa ngoại (FK) trong bảng PhieuMuon. Nhờ có FK này, Trigger mới "biết" chính xác cuốn sách nào vừa được mượn để đi tìm trong bảng Sách.

Tác động lên PK: Trigger thực hiện câu lệnh UPDATE dựa trên Khóa chính (PK) của bảng Sach. Việc dùng PK đảm bảo rằng lệnh giảm số lượng chỉ tác động đúng cuốn sách đó, không làm ảnh hưởng đến các loại sách khác.
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/14eb267f-ac2c-4114-8dc8-5726f4a854e1" />

# Thực nghiệm Trigger liên hoàn (Bảng A ↔ Bảng B)

Kịch bản giả định: * Bảng A: DocGia (Cột GhiChu)

Bảng B: PhieuMuon (Cột GhiChu)

Logic: Khi cập nhật ghi chú ở Độc giả, hệ thống tự đồng bộ sang Phiếu mượn của họ và ngược lại.
Bước 1: Tạo hai Trigger gây xung đột
```sql
USE [QuanLyThuVien_K235480106099];
GO

-- Xóa trigger cũ bị lỗi trước
IF OBJECT_ID('trg_A_to_B', 'TR') IS NOT NULL DROP TRIGGER [trg_A_to_B];
IF OBJECT_ID('trg_B_to_A', 'TR') IS NOT NULL DROP TRIGGER [trg_B_to_A];
GO

-- 1. Trigger trên bảng DocGia (Sửa GhiChu thành HoTen)
CREATE TRIGGER [trg_A_to_B]
ON [DocGia]
AFTER UPDATE
AS
BEGIN
    DECLARE @MaDG INT, @Ten NVARCHAR(MAX);
    -- Sửa 'GhiChu' thành 'HoTen' vì bảng của bạn có cột HoTen
    SELECT @MaDG = MaDocGia, @Ten = HoTen FROM inserted;

    UPDATE [PhieuMuon] 
    SET [TrangThai] = @Ten 
    WHERE [MaDocGia] = @MaDG;
    
    PRINT N'>> Trigger A đã chạy: Cập nhật PhieuMuon thành công.';
END;
GO

-- 2. Trigger trên bảng PhieuMuon (Sửa logic tương ứng)
CREATE TRIGGER [trg_B_to_A]
ON [PhieuMuon]
AFTER UPDATE
AS
BEGIN
    DECLARE @MaDG INT, @Status NVARCHAR(MAX);
    SELECT @MaDG = MaDocGia, @Status = [TrangThai] FROM inserted;

    UPDATE [DocGia] 
    SET [HoTen] = @Status 
    WHERE [MaDocGia] = @MaDG;

    PRINT N'>> Trigger B đã chạy: Cập nhật DocGia thành công.';
END;
GO
```
<img width="1918" height="1076" alt="image" src="https://github.com/user-attachments/assets/7b453fdf-7e46-4892-bce3-0851cb0b88c1" />

Bước 2: Thực hiện lệnh UPDATE để kích hoạt "chuỗi" tự động
```sql
-- Cập nhật tên độc giả để kích hoạt chuỗi Trigger
UPDATE [DocGia] SET [HoTen] = N'Son VIP' WHERE [MaDocGia] = 1;
```
Lúc này, thông báo lỗi mới xuất hiện:

"Maximum stored procedure, function, trigger, or view nesting level exceeded (limit 32)."

Đây chính là kết quả mà bài tập yêu cầu (hiện tượng đệ quy vô hạn).
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/5b26dedc-80e6-4d6a-b13c-b284590e2022" />

# PHẦN V: CURSOR VÀ DUYỆT DỮ LIỆU

### Sử dụng CURSOR để xử lý dữ liệu

Logic thực tế: Duyệt qua danh sách các độc giả đang mượn sách. Với mỗi độc giả, kiểm tra số ngày mượn. Nếu mượn quá 7 ngày, hệ thống sẽ tự động in ra một dòng thông báo nhắc nhở đòi sách kèm theo tên độc giả đó.
```sql
USE [QuanLyThuVien_K235480106099];
GO

-- 1. Khai báo các biến để chứa dữ liệu từng dòng
DECLARE @TenDG NVARCHAR(100);
DECLARE @TenS NVARCHAR(200);
DECLARE @NgayM DATETIME;
DECLARE @SoNgay INT;

-- 2. Khai báo CURSOR để duyệt danh sách mượn sách
DECLARE cur_NhacNhoTraSach CURSOR FOR
    SELECT D.HoTen, S.TenSach, P.NgayMuon
    FROM PhieuMuon P
    JOIN DocGia D ON P.MaDocGia = D.MaDocGia
    JOIN Sach S ON P.MaSach = S.MaSach
    WHERE P.NgayTra IS NULL; -- Chỉ duyệt những người chưa trả sách

-- 3. Mở CURSOR
OPEN cur_NhacNhoTraSach;

-- 4. Lấy dòng dữ liệu đầu tiên
FETCH NEXT FROM cur_NhacNhoTraSach INTO @TenDG, @TenS, @NgayM;

-- 5. Bắt đầu vòng lặp duyệt qua từng bản ghi
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Logic xử lý: Tính số ngày đã mượn
    SET @SoNgay = DATEDIFF(DAY, @NgayM, GETDATE());

    -- Nếu mượn lâu hơn 7 ngày thì thông báo nhắc nhở
    IF @SoNgay > 7
    BEGIN
        PRINT N'--- THÔNG BÁO NHẮC NHỞ ---';
        PRINT N'Độc giả: ' + @TenDG;
        PRINT N'Cuốn sách: ' + @TenS;
        PRINT N'Đã mượn ' + CAST(@SoNgay AS NVARCHAR(10)) + N' ngày. Yêu cầu liên hệ trả sách!';
    END
    ELSE
    BEGIN
        PRINT N'Độc giả ' + @TenDG + N' mượn sách ' + @TenS + N' vẫn trong hạn cho phép.';
    END

    -- Lấy dòng dữ liệu tiếp theo
    FETCH NEXT FROM cur_NhacNhoTraSach INTO @TenDG, @TenS, @NgayM;
END

-- 6. Đóng và giải phóng Cursor
CLOSE cur_NhacNhoTraSach;
DEALLOCATE cur_NhacNhoTraSach;
GO
```

*Nhận xét về việc sử dụng CURSOR*

Bạn nên đưa phần nhận xét này vào báo cáo để giảng viên thấy bạn hiểu sâu về hiệu năng:

Ưu điểm: Cho phép xử lý logic cực kỳ chi tiết cho từng dòng dữ liệu (như gửi email, in báo cáo riêng biệt cho từng người mượn).

Nhược điểm: Tốc độ xử lý của Cursor chậm hơn nhiều so với các lệnh SQL thông thường vì nó xử lý tuần tự (row-by-row) thay vì xử lý theo tập hợp (set-based).

Lời khuyên: Chỉ nên dùng Cursor khi thực sự cần thiết cho các tác vụ quản trị hoặc báo cáo định kỳ phức tạp.
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/7a3351a4-345d-42ad-bd13-465e9fbdcf55" />

### Giải pháp thay thế Cursor: Sử dụng Câu lệnh SELECT trực tiếp

Thay vì dùng Cursor để duyệt từng dòng và dùng lệnh PRINT, chúng ta có thể sử dụng câu lệnh SELECT kết hợp với biểu thức logic CASE WHEN để đưa ra toàn bộ thông báo nhắc nhở chỉ trong duy nhất một lần truy vấn.
```sql
USE [QuanLyThuVien_K235480106099];
GO

-- Đo lường thời gian bắt đầu
DECLARE @StartTime DATETIME = GETDATE();

SELECT 
    D.HoTen AS [DocGia],
    S.TenSach,
    DATEDIFF(DAY, P.NgayMuon, GETDATE()) AS [SoNgayMuon],
    CASE 
        WHEN DATEDIFF(DAY, P.NgayMuon, GETDATE()) > 7 
            THEN N'--- CẢNH BÁO: Quá hạn! Yêu cầu trả sách ngay ---'
        ELSE N'Trong hạn cho phép'
    END AS [ThongBaoNhacNho]
FROM PhieuMuon P
JOIN DocGia D ON P.MaDocGia = D.MaDocGia
JOIN Sach S ON P.MaSach = S.MaSach
WHERE P.NgayTra IS NULL;

-- In thời gian thực hiện
PRINT 'Thoi gian xu ly (Set-based): ' + CAST(DATEDIFF(ms, @StartTime, GETDATE()) AS VARCHAR) + ' ms';
GO
```
### So sánh Hiệu năng: CURSOR vs. SET-BASED (SELECT)

| Tiêu chí | Sử dụng CURSOR (Duyệt tuần tự) | Sử dụng SELECT (Xử lý tập hợp) |
| :--- | :--- | :--- |
| **Cách thức** | 🔄 Duyệt từng dòng một (tương tự vòng lặp `for`) | ⚡ Xử lý toàn bộ các dòng cùng một lúc |
| **Tốc độ** | 🐢 **Chậm** (phải mở/đóng bộ nhớ liên tục cho từng dòng) | 🚀 **Rất nhanh** (được bộ tối ưu hóa SQL Server xử lý) |
| **Tài nguyên** | 📉 Chiếm dụng CPU và RAM cao hơn | ☘️ Tiết kiệm tài nguyên hệ thống |
| **Khả năng mở rộng** | ❌ **Rất kém** khi dữ liệu lên đến hàng triệu dòng | ✅ **Rất tốt**, phù hợp với dữ liệu lớn (Big Data) |

> **Nhận xét:** Trong hầu hết các trường hợp quản lý dữ liệu tại thư viện, việc sử dụng các câu lệnh **Set-based** (như SELECT, UPDATE, DELETE trực tiếp) luôn mang lại hiệu suất vượt trội so với **Cursor**.
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/77da7b90-37d8-499a-8e1a-67f4cefd0c7e" />

### Bài toán: Tự động phân bổ số tiền đóng phạt để xóa nợ (Debt Allocation)

Kịch bản:
Một độc giả nợ thư viện rất nhiều khoản: tiền phạt mượn sách trễ, tiền đền sách mất, tiền phí thường niên... Mỗi khoản nợ có độ ưu tiên khác nhau (ví dụ: tiền phạt sách phải trả trước, phí thường niên trả sau).

Hôm nay, độc giả đó đến nộp 200,000 VNĐ.

Yêu cầu: Hệ thống phải duyệt qua từng khoản nợ theo thứ tự ưu tiên, dùng số tiền 200k đó để "trả dần". Khoản nào hết nợ thì chuyển sang khoản tiếp theo cho đến khi hết tiền thì dừng lại.

Tại sao SQL thuần khó giải quyết?
SQL xử lý theo tập hợp, nó không biết "dòng trước" đã dùng bao nhiêu tiền để "dòng sau" biết đường mà trừ tiếp. Chỉ có CURSOR mới có thể cầm số tiền 200k đó, đi qua từng dòng, thực hiện phép trừ và cập nhật lại số dư còn lại (Running Total logic phức tạp).

### Giải pháp bằng CURSOR (Duyệt và Trừ nợ)
```sql
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
```
Bước 1: Chuẩn bị tài nguyên (Setup)

Hệ thống nạp số tiền nộp (@SoTienNop = 200,000) vào bộ nhớ.

Thiết lập một "danh sách chờ" (Cursor) chứa các khoản nợ, được sắp xếp theo thứ tự ưu tiên từ nhỏ đến lớn (1 → 2 → 3).

Bước 2: Kích hoạt và Truy cập (Open & Fetch First)

Con trỏ mở ra và nhảy đến bản ghi đầu tiên trong danh sách (Khoản nợ có UuTien = 1).

Dữ liệu của dòng này được đổ vào các biến tạm để chuẩn bị so sánh.

Bước 3: Vòng lặp kiểm tra điều kiện (While Loop)
Hệ thống sẽ liên tục kiểm tra: Còn nợ để trả không? và Còn tiền trong túi không?

Bước 4: Xử lý logic rẽ nhánh (Decision Making)
Tại mỗi dòng nợ, máy tính sẽ thực hiện một phép tính so sánh:

Nếu Tiền nộp ≥ Tiền nợ: Trả hết khoản đó → Trừ số tiền tương ứng vào túi tiền → In thông báo "Đã trả hết".

Nếu Tiền nộp < Tiền nợ: Trả nốt những gì còn lại → Đặt số tiền trong túi về 0 → In thông báo "Trả được một phần".

Bước 5: Chuyển tiếp (Fetch Next)

Sau khi xử lý xong một dòng, con trỏ "bước" sang dòng nợ tiếp theo.

Nếu túi tiền đã hết (@SoTienNop = 0), vòng lặp sẽ dừng lại ngay lập tức (dù vẫn còn nợ chưa duyệt).

Bước 6: Kết thúc và Thu hồi (Close & Deallocate)

Đóng con trỏ để ngừng truy cập dữ liệu.

Xóa con trỏ khỏi RAM để giải phóng tài nguyên cho máy chủ.
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/9ff061ee-1804-4f33-b057-c2512457957b" />
