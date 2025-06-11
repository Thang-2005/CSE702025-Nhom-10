# CSE702025-Nhom-10  Báo cáo dự án website bán quần áo 
BÁO CÁO GIỮA HỌC PHẦN
     KỸ THUẬT PHẦN MỀM
         “ Ý TƯỞNG LÀM TRANG WEB BÁN QUẦN ÁO”  NĂM 2025
Tên sản phẩm: Web bán quần áo
             Sinh viên thực hiện
        Nguyễn Văn Thắng – 23010234
        Nguyễn Việt Hoàng –  23010279
	      Hoàng Ân Nghĩa – 23010261
      Nhóm 10
      Giảng viên: Vũ Quang Dũng
Khoa Công Nghệ Thông Tin, Trường Đại Học Phenikaa
          Tháng 06/2025
NHẬN XÉT CỦA GIẢNG VIÊN

……………………………………………………………………………………………………………
……………………………………………………………………………………………………………
………………………………………………………………………………………………………………
………………………………………………………………………………………………………………
………………………………………………………………………………………………………………
…………………………………………………………………………………………………………………
…………………………………………………………………………………………………


              BẢNG PHÂN CHIA CÔNG VIỆC
Hoàng Ân Nghĩa:   	Làm báo cáo, vẽ biểu đồ, Làm slide, brochure
Nguyễn Việt Hoàng:	Làm web giao diện và các chức năng
Nguyễn Văn Thắng:   Làm web giao diện và các chức năng

                                      MỤC LỤC
LỜI MỞ ĐẦU................................................................................... 4
Danh mục hình ảnh, bảng biểu................................................................ 5
1. GIỚI THIỆU..................................................................... 6
1.1 Mục đích..................................................................................... 6
1.2 Phạm vi.......................................................................................... 6
1.3 Từ điển thuật ngữ....................................................................... 7
1.4 Tài liệu tham khảo....................................................................... 8
1.5 Tổng quan hệ thống................................................................... 8
2. CÁC YÊU CẦU CHỨC NĂNG............................................... 8
2.1 Các tác nhân (Actors)..................................................................... 8
    - Khách hàng
    - Quản trị viên (Admin)
2.2 Các chức năng chính của hệ thống............................................... 9
    - Đăng ký / Đăng nhập người dùng
    - Duyệt sản phẩm (quần áo, phụ kiện, giày dép...)
    - Tìm kiếm & lọc sản phẩm
    - Thêm sản phẩm vào giỏ hàng
    - Đặt hàng & thanh toán
    - Quản lý tài khoản
    - Quản lý đơn hàng
    - Đánh giá sản phẩm
    - Quản lý sản phẩm (Admin)
    - Xử lý đơn hàng (Admin)
2.3 Biểu đồ use-case tổng quát .....................................14
2.4 Biểu đồ use-case phân rã ........................................ 14
    2.4.1 Biểu đồ use-case cho khách hàng...................................... 14
    2.4.2 Biểu đồ use-case cho Admin.................................................. 15
2.5 Quy trình nghiệp vụ......................................................... 16
    2.5.1 Quy trình đăng nhập..................................................... 16
    2.5.2 Quy trình duyệt và mua sản phẩm............................................ 17
    2.5.3 Quy trình xử lý đơn hàng của Admi............................................. 17
2.6 Đặc tả use-case...................................................................... 17
    2.6.1 Use-case Đăng nhập / Đăng ký............................................. 17
    2.6.2 Use-case Duyệt và tìm kiếm sản phẩm.................................... 18
    2.6.3 Use-case Thêm vào giỏ hàng & đặt hàng..................................... 18
    2.6.4 Use-case Quản lý tài khoản............................................................ 18
    2.6.5 Use-case Theo dõi đơn hàng........................................................... 19
    2.6.6 Use-case Đánh giá sản phẩm......................................... 19
    2.6.7 Use-case Quản lý sản phẩm (Admin)....................................... 20
    2.6.8 Use-case Quản lý đơn hàng (Admin)............................................ 20
3. CÁC YÊU CẦU PHI CHỨC NĂNG.................................................... 20
3.1 Yêu cầu về giao diện người dùng......................................................... 21
3.2 Các ràng buộc hệ thống....................................................................... 21
KẾT LUẬN......................................................................................... 22

Giới thiệu dự án
  Trong bản báo cáo này, nhóm chúng em tập trung vào việc xây dựng một trang web học tiếng Anh trực tuyến, nhằm mang đến cho người dùng một nền tảng hiệu quả và tiện lợi để nâng cao kỹ năng sử dụng tiếng Anh.      Trang web được thiết kế để hỗ trợ người học vượt qua những khó khăn thường gặp trong quá trình học tập, đồng thời tạo ra một môi trường học tập trực tuyến sinh động, thú vị và mang tính tương tác cao.
  Báo cáo sẽ trình bày chi tiết quy trình xây dựng trang web, các chức năng và tính năng chính, cùng với các yêu cầu phi chức năng như hiệu năng, bảo mật và giao diện người dùng. Bên cạnh đó, nhóm cũng sẽ giới          thiệu các use-case và mô tả chi tiết từng trường hợp sử dụng, giúp làm rõ cách thức hoạt động và tương tác của người dùng với hệ thống.
  Trang web hướng đến việc hỗ trợ người dùng ở mọi trình độ – từ cơ bản đến nâng cao – thông qua các bài học, bài luyện tập, bài kiểm tra và tài liệu học tập đa dạng. Ngoài ra, hệ thống cũng tích hợp các tính           năng hỗ trợ như trợ giúp trực tuyến, mục câu hỏi thường gặp (FAQ), gửi phản hồi, và xây dựng cộng đồng người học để chia sẻ kinh nghiệm và cùng tiến bộ.
  Nhóm chúng em hy vọng rằng, trang web học tiếng Anh này sẽ mang lại cho người dùng một trải nghiệm học tập hiệu quả và linh hoạt, giúp họ xây dựng và nâng cao kỹ năng tiếng Anh một cách bền vững. Qua dự án             này, chúng em cũng mong muốn hoàn thiện hơn các kỹ năng về lập trình, thiết kế và phát triển sản phẩm công nghệ, từ đó tạo ra một nền tảng học tập mạnh mẽ và đáng tin cậy.

                DANH MỤC CÁC HÌNH ẢNH, BẢNG BIỂU
      Hình ảnh
•	Hình 1. Giao diện đăng nhập
•	Hình 2. Giao diện trang chủ hiển thị các sản phẩm
•	Hình 3. Giao diện chi tiết sản phẩm
•	Hình 4. Giao diện giỏ hàng và thanh toán
•	Hình 5. Giao diện lịch sử đơn hàng của người dùng
•	Hình 6. Giao diện quản lý sản phẩm (Admin)
•	Hình 7. Giao diện quản lý đơn hàng (Admin)
•	Hình 8. Biểu đồ use-case tổng quát
•	Hình 9. Biểu đồ use-case phân rã của người dùng
•	Hình 10. Biểu đồ use-case phân rã của quản trị viên
________________________________________
    Bảng biểu
•	Bảng 1. Từ điển thuật ngữ
•	Bảng 2. Các chức năng chính của hệ thống bán quần áo
•	Bảng 3. Đặc tả use-case Đăng nhập / Đăng ký
•	Bảng 4. Đặc tả use-case Thêm vào giỏ hàng
•	Bảng 5. Đặc tả use-case Xử lý đơn hàng
•	Bảng 6. Yêu cầu phi chức năng của hệ thống.

1.1 Mục đích
Mục đích chính của trang web là cung cấp một nền tảng mua sắm quần áo trực tuyến hiệu quả, dễ sử dụng và tiết kiệm thời gian cho người dùng. Thông qua trang web, khách hàng có thể:
•	Dễ dàng tìm kiếm và lựa chọn sản phẩm theo loại, kích cỡ, màu sắc, thương hiệu,...
•	Thực hiện các giao dịch mua bán một cách nhanh chóng, an toàn và tiện lợi
•	Theo dõi trạng thái đơn hàng, quản lý thông tin cá nhân và lịch sử mua sắm
Ngoài ra, việc phát triển trang web này cũng nhằm phục vụ cho mục đích học tập của nhóm, giúp chúng em rèn luyện kỹ năng lập trình, quản lý dữ liệu và thiết kế giao diện, từ đó có cái nhìn thực tế hơn về quy trình xây dựng một sản phẩm phần mềm hoàn chỉnh.
________________________________________
1.2 Phạm vi
Trang web được phát triển hướng đến người dùng phổ thông có nhu cầu mua sắm quần áo trực tuyến, đặc biệt là học sinh – sinh viên.
Trong giai đoạn đầu, trang web hoạt động ở phạm vi thử nghiệm nội bộ trong trường học, tập trung vào các chức năng chính như:
•	Xem danh sách và chi tiết sản phẩm
•	Thêm sản phẩm vào giỏ hàng
•	Đăng ký, đăng nhập tài khoản
•	Quản lý đơn hàng (dành cho người dùng và admin)
Vì là sản phẩm học tập nên một số tính năng nâng cao như tích hợp thanh toán điện tử, đánh giá sản phẩm hay chatbot tư vấn sẽ được nghiên cứu và phát triển trong giai đoạn tiếp theo.
________________________________________
1.3 Từ điển thuật ngữ
•	Chức năng (Function): Các hành động cụ thể mà hệ thống có thể thực hiện, ví dụ: thêm sản phẩm vào giỏ hàng, đăng nhập.
•	Use-case: Mô tả cách người dùng tương tác với hệ thống để thực hiện mục tiêu cụ thể.
•	Quy trình nghiệp vụ (Business Process): Chuỗi hành động liên tiếp giúp hoàn tất một giao dịch, ví dụ: mua hàng – thanh toán – giao hàng.
•	Đặc tả (Specification): Mô tả chi tiết về hành vi và yêu cầu kỹ thuật của hệ thống.
•	Yêu cầu phi chức năng (Non-functional Requirements): Các yêu cầu như tốc độ phản hồi, khả năng xử lý nhiều người dùng, bảo mật, tính dễ dùng,...
•	Hiệu năng (Performance): Mức độ nhanh chóng và ổn định khi thực hiện các tác vụ như tải trang, xử lý đơn hàng.
•	Bảo mật (Security): Khả năng bảo vệ thông tin cá nhân và tài khoản người dùng khỏi truy cập trái phép.
•	Giao diện (Interface): Phần hiển thị và tương tác giữa người dùng và hệ thống, bao gồm giao diện trang web và quản trị.
•	Ràng buộc (Constraint): Các giới hạn kỹ thuật hoặc nghiệp vụ như thời gian giao hàng, số lượng sản phẩm trong kho,...

1.4 Tài liệu tham khảo
1.	W3Schools – Học lập trình web (HTML, CSS, JS)
https://www.w3schools.com/
→ Cung cấp kiến thức nền tảng để xây dựng và thiết kế giao diện web.
2.	Bootstrap – Framework giao diện người dùng
https://getbootstrap.com/
→ Hỗ trợ xây dựng giao diện web bán hàng đẹp và responsive nhanh chóng.
3.	Figma – Công cụ thiết kế giao diện
https://www.figma.com/
→ Thiết kế mockup giao diện trang web trước khi lập trình.
4.	Tiki.vn – Trang thương mại điện tử tham khảo
https://tiki.vn/
→ Tham khảo chức năng, cách bố trí giao diện và trải nghiệm người dùng thực tế.
1.5 Tổng quan hệ thống
Hệ thống trang web bán quần áo được thiết kế như một nền tảng thương mại điện tử cơ bản, cho phép người dùng thực hiện các hoạt động mua sắm trực tuyến như xem sản phẩm, đặt hàng, thanh toán, và theo dõi đơn hàng. Đồng thời, hệ thống còn cung cấp giao diện quản trị cho quản trị viên (Admin) để quản lý sản phẩm, đơn hàng và người dùng.
Trang web bao gồm hai nhóm người dùng chính:
•	Người dùng (User): Có thể đăng ký/đăng nhập, tìm kiếm và duyệt sản phẩm, thêm vào giỏ hàng, đặt hàng, xem lịch sử mua hàng và cập nhật thông tin cá nhân.
•	Quản trị viên (Admin): Có thể thêm/sửa/xóa sản phẩm, duyệt và cập nhật trạng thái đơn hàng, cũng như quản lý thông tin tài khoản người dùng.
Các chức năng chính của hệ thống bao gồm:
•	Giao diện người dùng thân thiện: Thiết kế đơn giản, dễ sử dụng, phù hợp cho cả người dùng mới.
•	Tìm kiếm và lọc sản phẩm: Hỗ trợ tìm kiếm theo tên, loại sản phẩm, giá và kích cỡ.
•	Giỏ hàng và thanh toán: Cho phép người dùng thêm sản phẩm, cập nhật số lượng, thanh toán và nhận thông tin xác nhận đơn hàng.
•	Quản lý đơn hàng: Người dùng có thể theo dõi tình trạng đơn hàng, trong khi Admin có thể cập nhật trạng thái (đã xử lý, đang giao, đã giao, hủy).
•	Hệ thống quản trị: Cho phép Admin kiểm soát toàn bộ nội dung trên website, đảm bảo hoạt động ổn định và chính xác.
Hệ thống được phát triển với mục tiêu đơn giản, dễ mở rộng và có thể triển khai trên phạm vi rộng hơn trong tương lai. Đây cũng là một bước thực hành quan trọng để nhóm làm quen với quá trình xây dựng một ứng dụng web hoàn chỉnh từ phân tích yêu cầu đến thiết kế và hiện thực hóa chức năng.
2. Các yêu cầu chức năng
2.1 Các tác nhân của hệ thống
Các tác nhân tương tác với hệ thống trang web bán quần áo bao gồm:
•	Khách hàng (Người dùng):
Đây là người dùng chính của trang web – những người truy cập để xem sản phẩm, đăng ký tài khoản, đăng nhập, thêm sản phẩm vào giỏ hàng, đặt hàng và theo dõi đơn hàng. Họ là đối tượng mục tiêu chính, có ảnh hưởng trực tiếp đến hiệu quả hoạt động của website.
•	Quản trị viên (Admin):
Là người có toàn quyền quản lý hệ thống. Admin có thể thêm/sửa/xóa sản phẩm, quản lý đơn hàng, tài khoản khách hàng, và xử lý các vấn đề phát sinh trên hệ thống. Admin cũng đảm bảo rằng trang web luôn hoạt động ổn định và cập nhật nội dung thường xuyên.
•	Nhân viên hỗ trợ kỹ thuật:
Là những người có trách nhiệm đảm bảo hạ tầng kỹ thuật của trang web luôn ổn định, xử lý các lỗi kỹ thuật, hỗ trợ người dùng khi gặp sự cố liên quan đến truy cập, đăng nhập, hoặc các chức năng mua sắm.
________________________________________
Ba tác nhân trên tương tác với hệ thống theo các vai trò và quyền hạn riêng biệt, cùng nhau đảm bảo hệ thống hoạt động hiệu quả, thân thiện và đáp ứng được nhu cầu mua sắm thời trang trực tuyến cho người dùng.
2.2	Các chức năng của hệ thống
2.2.1. Chức năng đăng nhập
