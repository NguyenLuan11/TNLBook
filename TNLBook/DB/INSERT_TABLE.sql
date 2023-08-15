USE SaleBook
GO

INSERT INTO CHUDE(TenChuDe) VALUES (N'Tâm lý'),(N'Dân gian'),(N'Văn học'),(N'Tiểu thuyết'),(N'Manga'),(N'Cổ tích'),
(N'Thiếu nhi'),(N'Tôn giáo'),(N'Kinh tế'),(N'Khoa học công nghệ'),(N'Chính trị - pháp luật'),(N'Văn hóa xã hội - Lịch sử'),(N'Truyện ngắn')

INSERT INTO NHAXUATBAN(TenNXB, Diachi, DienThoai) VALUES (N'Kim Đồng', N'55 Quang Trung, Hai Bà Trưng, Hà Nội', '(024) 39428633'),
(N'Trẻ', N'161B Lý Chính Thắng; Phường 7; Quận 3; Thành phố Hồ Chí Minh', '028 3931 6289'),
(N'Thanh Niên', N'143 Pasteur, Phường 6, Quận 3, Thành phố Hồ Chí Minh', '028 3910 6963'),
(N'Thế Giới', N'7 Đ. Nguyễn Thị Minh Khai, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh', '028 3822 0102'),
(N'Giáo Dục', N'100 Đ. Man Thiện, Hiệp Phú, Quận 9, Thành phố Hồ Chí Minh', '028 3896 6728'),
(N'Tôn Giáo', N'53 Tràng Thi, Hàng Bông, Hoàn Kiếm, Hà Nội', '028 3896 1111'),
(N'Sự Thật', N'72 Trần Quốc Thảo, Võ Thị Sáu, Quận 3, Thành phố Hồ Chí Minh', '028 3932 5410'),
(N'Văn Học', N'20 Đ. Nam Kỳ Khởi Nghĩa, Phường 8, Quận 3, Thành phố Hồ Chí Minh', '028 3846 9858')

INSERT INTO SACH(Tensach, Giaban, Mota, Anhbia, Ngaycapnhat, Soluongton, MaCD, MaNXB) 
VALUES (N'Chú thuật hồi chiến Vol.11', 30000, N'Khắp sân ga dưới tầng hầm Shibuya, đâu đâu cũng là dân thường và người bị biến dạng. 
Bất chấp thảm cảnh không lối thoát, Gojo vẫn áp đảo đám chú linh. Song phe địch lại tung ra đòn quyết định thắng bại, thứ có thể phong ấn Gojo! 
Mặt khác, trong lúc đang gấp rút chạy đến sân ga, đồng minh bất ngờ xuất hiện!', 'truyen-cthoichien.jpg', '2023/04/20', 10, 5, 1),

(N'Tắt đèn', 25000, N'Tắt đèn là một trong những tác phẩm văn học tiêu biểu nhất của nhà văn Ngô Tất Tố. Đây là một tác phẩm văn học hiện thực 
phê phán với nội dung nói về cuộc sống khốn khổ của tầng lớp nông dân Việt Nam đầu thế kỉ XX dưới ách đô hộ của thực dân Pháp', 'vanhoc-tatden.jpg', '2022/03/30', 20, 4,8),

(N'Clean Code', 335000, N'Martin, người đã giúp mang lại các nguyên tắc linh hoạt từ quan điểm của một học viên cho hàng chục nghìn lập trình viên, 
đã hợp tác với các đồng nghiệp của mình từ Object Mentor để chắt lọc phương pháp linh hoạt tốt nhất của họ về dọn dẹp mã “ngay lập tức” thành một cuốn sách 
sẽ thấm nhuần bên trong bạn những giá trị của nghệ nhân phần mềm và giúp bạn trở thành một lập trình viên giỏi hơn―nhưng chỉ khi bạn làm việc với nó.', 
'sach-cleancode.jpg', '2022/02/22', 17, 10, 4),

(N'Điểm bùng phát', 155000, N'Điểm Bùng Phát là một khoảnh khắc kỳ ảo, khi một ý tưởng, một xu thế, hay một hành vi xã hội vượt qua ngưỡng nhất định – bùng phát và lan ra như ngọn lửa hoang dã. 
Giống như chỉ một người bị ốm cũng có thể làm khởi phát cả dịch cúm, một mục tiêu nhỏ bé nhưng chính xác hoàn toàn có thể trở thành nguyên nhân 
thúc đẩy một xu hướng thời trang, nhân rộng việc tiêu thụ của sản phẩm, hay làm hạ tỷ lệ phạm tội,', 'tamly-diembungphat.jpg', '2022/05/11', 11, 1, 4),

(N'Dế Mèn Phiêu Lưu Ký', 120000, N'Trong hơn nửa thế kỉ kể từ ngày ra mắt bạn đọc lần đầu tiên năm 1941, "Dế Mèn phiêu lưu kí" là một trong những sáng tác tâm đắc nhất của nhà văn Tô Hoài. 
Tác phẩm đã được tái bản nhiều lần và được dịch ra hơn 20 thứ tiếng trên thế giới và luôn được các thế hệ độc giả nhỏ tuổi đón nhận.', 'thieunhi-demenplk.jpg', '2022/06/27', 20, 7, 1),

(N'Cho tôi xin một vé đi tuổi thơ', 65000, N'Trong Cho tôi xin một vé đi tuổi thơ, nhà văn Nguyễn Nhật Ánh mời người đọc lên chuyến tàu quay ngược trở lại thăm tuổi thơ và tình bạn dễ thương của 4 bạn nhỏ. 
Những trò chơi dễ thương thời bé, tính cách thật thà, thẳng thắn một cách thông minh và dại dột, những ước mơ tự do trong lòng… khiến cuốn sách có thể làm các bậc phụ huynh lo lắng rồi thở phào. 
Không chỉ thích hợp với người đọc trẻ, cuốn sách còn có thể hấp dẫn và thực sự có ích cho người lớn trong quan hệ với con mình.', 'tieuthuyet-chotoixin1vedituoitho.jpg', '2023/04/01', 15, 4, 2),

(N'Mắt biếc', 65000, N'Mắt biếc là một tác phẩm được nhiều người bình chọn là hay nhất của nhà văn Nguyễn Nhật Ánh. Tác phẩm này cũng đã được dịch giả Kato Sakae dịch sang tiếng Nhật để giới thiệu với độc giả Nhật Bản. 
“Tôi gửi tình yêu cho mùa hè, nhưng mùa hè không giữ nổi. Mùa hè chỉ biết ra hoa, phượng đỏ sân trường và tiếng ve nỉ non trong lá. Mùa hè ngây ngô, giống như tôi vậy. Nó chẳng làm được những điều tôi ký thác. Nó để Hà Lan đốt tôi, đốt rụi. Trái tim tôi cháy thành tro, rơi vãi trên đường về.” 
… Bởi sự trong sáng của một tình cảm, bởi cái kết thúc buồn, rất buồn khi xuyên suốt câu chuyện vẫn là những điều vui, buồn lẫn lộn …', 'tieuthuyet-matbiec.jpg', '2023/04/01', 15, 4, 2),

(N'Quản lý thời gian thông minh', 125000, N'Thời gian là tiền, là sức khỏe, là trí tuệ. Tại sao có những cảm thấy 24h mỗi ngày là chưa đủ, còn có những người lại mong ngóng ngày này trôi qua thật nhanh. Và điểm chung của nó, nếu ai cảm thấy thời gian trôi thật nhanh thì họ đang có mục đích sông của riêng mình 
và thành công đang chờ họ, trái lại với đó nếu ai cảm thấy thời gian trôi thật chậm thì họ đang bị bế tắc và mãi không thoát ra khỏi vòng luẩn quẩn, và bạn biết rồi đấy, thành công không có đâu nếu mãi không tìm thấy lối ra. 
Quản Lý Thời Gian Thông Minh Của Người Thành Đạt sẽ giúp bạn sử dụng thời gian một cách hiệu quả hơn.', 'kinhte-qltgianthongminh.jpg', '2021/02/28', 10, 9, 4),

(N'Cánh Đồng Bất Tận', 70000, N'"Cánh đồng bất tận" bao gồm những truyện hay và mới nhất của nhà văn Nguyễn Ngọc Tư. Đây là tác phẩm đang gây xôn xao trong đời sống văn học, bởi ở đó người ta tìm thấy sự dữ dội, khốc liệt của đời sống thôn dã qua cái nhìn của một cô gái. 
Bi kịch về nỗi mất mát, sự cô đơn được đẩy lên đến tận cùng, khiến người đọc có lúc cảm thấy nhói tim...', 'truyen-canhdongbattan.jpg', '2021/05/15', 20, 13, 2),

(N'Chú thuật hồi chiến Vol.1', 30000, N'Itadori Yuji là một học sinh cấp Ba sở hữu năng lực thể chất phi thường. Hằng ngày cậu thường tới bệnh viện chăm người ông đang ốm liệt giường. Nhưng một ngày nọ, phong ấn của “chú vật” vốn ngủ yên trong trường bị phá giải, quái vật xuất hiện. 
Để cứu hai anh chị khóa trên đang gặp nguy hiểm, Itadori đã xông vào trường và...', 'truyen-cthoichienVol1.jpg', '2023/01/01', 10, 5, 1)

INSERT INTO TACGIA(TenTG, Diachi, Tieusu, Dienthoai) VALUES 
(N'Robert Cecil Martin', N'Mỹ', N'thường được gọi là "Uncle Bob", người Mỹ. Ông là một kỹ sư phần mềm, người tư vấn, và là tác giả của nhiều cuốn best-seller. 
Ông được công nhận nhiều nhất vì đã phát triển nhiều nguyên tắc thiết kế phần mềm và là người sáng lập ra Tuyên ngôn Agile rất có ảnh hưởng trong giới phát triển phần mềm. 
Martin là tác giả của nhiều cuốn sách và các bài báo trên tạp chí. Ông từng là tổng biên tập của tạp chí C++ Report và từng là chủ tịch đầu tiên của Agile Alliance.', ''),

(N'Akutami Gege', N'Nhật Bản', N'Akutami Gege là một họa sĩ manga người Nhật Bản và là tác giả của Jujutsu Kaisen. 
Năm 2018, Akutami Gege bắt đầu được đăng truyện dài kỳ đầy đủ lần đầu tiên với bộ Jujutsu Kaisen trên số 14 của tờ Weekly Shonen Jump. 
Jujutsu Kaisen đóng vai trò là bộ hậu truyện tiếp nối Jujutsu Kaisen 0: Jujutsu High.', ''),

(N'Ngô Tất Tố', N'Thôn Lộc Hà, xã Mai Lâm, huyện Đông Anh, Hà Nội', N'Ngô Tất Tố (1893 – 20 tháng 4 năm 1954) là một nhà văn, nhà báo, nhà Nho học, dịch giả và nhà nghiên cứu có ảnh hưởng lớn ở Việt Nam giai đoạn trước 1954.', ''),

(N'Malcolm Timothy Gladwell', N'Anh', N'Malcolm Timothy Gladwell (sinh ngày 3 tháng 9 năm 1963) là một nhà báo, tác giả, và diễn giả gốc Canada sinh ra tại Anh. Ông là một cây bút của báo The New Yorker từ năm 1996. 
Tính đến hiện tại, ông đã viết 5 cuốn sách. Tất cả năm cuốn sách đều trở thành Best-Seller - nằm trong danh sách Bán Chạy Nhất của The New York Times. 
Bên cạnh đó, ông cũng là người chủ trò của podcast (cuộc hội đàm) Xét lại Lịch sử.', ''),

(N'Tô Hoài', N'phường Nghĩa Đô, quận Cầu Giấy, Hà Nội, Việt Nam', N'Tô Hoài (tên khai sinh: Nguyễn Sen; 27 tháng 9 năm 1920 – 6 tháng 7 năm 2014) là một nhà văn Việt Nam. Một số tác phẩm đề tài thiếu nhi của ông được dịch ra ngoại ngữ. 
Ông được nhà nước Việt Nam trao tặng Giải thưởng Hồ Chí Minh về Văn học – Nghệ thuật Đợt 1 (1996)', ''),

(N'Nguyễn Nhật Ánh', N'làng Đo Đo, xã Bình Quế, huyện Thăng Bình, tỉnh Quảng Nam', N'Nguyễn Nhật Ánh (sinh ngày 7 tháng 5 năm 1955) là một nhà văn, nhà thơ, bình luận viên Việt Nam. Ông được biết đến qua nhiều tác phẩm văn học về đề tài tuổi trẻ, các tác phẩm của ông rất được độc giả ưa chuộng và nhiều tác phẩm đã được chuyển thể thành phim. 
Ông lần lượt viết về sân khấu, phụ trách mục tiểu phẩm, phụ trách trang thiếu nhi và hiện nay là bình luận viên thể thao trên báo Sài Gòn Giải phóng Chủ nhật với bút danh Chu Đình Ngạn.', ''),

(N'Nguyễn Ngọc Tư', N'xã Tân Duyệt, huyện Đầm Dơi, tỉnh Cà Mau', N'Nguyễn Ngọc Tư (sinh năm 1976) là một nhà văn, thành viên Hội nhà văn Việt Nam. Năm 2018, cô được trao Giải thưởng Văn học Liberaturpreis 2018 do Litprom (Hiệp hội quảng bá văn học châu Á, châu Phi, Mỹ Latin ở Đức) bình chọn, dựa trên việc xem xét các bản dịch tiếng Đức tác phẩm nổi bật của các tác giả nữ đương đại tiêu biểu trong khu vực. 
Giải thưởng được trao hàng năm nhằm vinh danh các tác giả nữ đến từ châu Á, Phi, Mỹ Latin, Các tiểu vương quốc Ả Rập thống nhất (UAE) và vùng Caribe.', '')

INSERT INTO VIETSACH(MaTG, Masach, Vaitro, Vitri) VALUES (2, 5, N'', N''), (2, 15, N'', N''), (1, 7, N'', N''), (3, 6, N'', N''), (5, 9, N'', N''), 
(7, 14, N'', N''), (6, 11, N'', N''), (6, 10, N'', N''), (4, 8, N'', N'')

INSERT INTO KHACHHANG(HoTen, Taikhoan, Matkhau, Email, DiachiKH, DienthoaiKH, Ngaysinh) VALUES 
(N'Đoàn Tài', 'DoanTai', 'DT123', 'doantai123@gmail.com', N'35 ấp Tân Hữu, huyện Xuân Lộc, tỉnh Đồng Nai', '0385927801', '2002-05-08'),
(N'Trần Nguyên Luân', 'NguyenLuan', 'TNL123', 'nguyenluan123@gmail.com', N'145 ấp Trung Nghĩa, huyện Xuân Lộc, tỉnh Đồng Nai', '0395373389', '2002-05-17')

---INSERT INTO DONDATHANG(Dathanhtoan, Tinhtranggiaohang, Ngaydat, Ngaygiao, MaKH) VALUES ()

---INSERT INTO CHITIETDONTHANG(MaDonHang, Masach, Soluong, Dongia) VALUES ()

