# Phần Mềm.store — triển khai miễn phí từ đầu

Bộ này gồm website, database schema và hướng dẫn. Hosting tĩnh miễn phí: GitHub Pages. Đăng nhập/database: Supabase Free.

## 1. Tạo Supabase
1. Tạo tài khoản tại https://supabase.com/ và tạo project.
2. Mở **SQL Editor → New query**, dán toàn bộ `schema.sql`, bấm **Run**.
3. Vào **Project Settings → API** (hoặc Connect), sao chép **Project URL** và **publishable/anon key**. Không bao giờ dùng `service_role` key trong website.

## 2. Kết nối website
1. Mở `index.html` bằng Notepad.
2. Tìm `SUPABASE_URL` và `SUPABASE_ANON_KEY` gần cuối file.
3. Thay 2 giá trị placeholder bằng URL và public/anon key của project Supabase rồi lưu.

## 3. Tạo website miễn phí trên GitHub Pages
1. Đăng ký https://github.com/ nếu chưa có.
2. Tạo repository mới tên `phan-mem-store`, chọn Public.
3. Tải `index.html`, `schema.sql`, `README.md` và thư mục `assets` lên repository (Add file → Upload files).
4. Mở Settings → Pages → Build and deployment: chọn Deploy from a branch, branch `main`, folder `/(root)`, nhấn Save.
5. Chờ vài phút. GitHub sẽ đưa link dạng `https://TEN-GITHUB.github.io/phan-mem-store/`.

## 4. Tạo Admin CAO VĂN PHONG THƯ
1. Mở link website, chọn Đăng nhập → Tạo tài khoản, đăng ký bằng email của bạn và mật khẩu mạnh.
2. Nếu yêu cầu xác nhận email, mở hộp thư để xác nhận.
3. Trong Supabase → SQL Editor, chạy lệnh sau, thay email bằng email bạn đã đăng ký:
   ```sql
   update public.profiles
   set role='admin', display_name='CAO VĂN PHONG THƯ'
   where id=(select id from auth.users where email='EMAIL_CUA_BAN');
   ```
4. Đăng xuất rồi đăng nhập lại. Bảng quản trị sẽ xuất hiện phía dưới trang.
5. Không có mật khẩu admin cố định trong mã nguồn. Quyền admin được cấp qua database.

## 5. QR ngân hàng và nạp tiền
- `assets/qr-tham-khao.webp` là ảnh QR bạn gửi, chỉ là ảnh tham khảo. Chưa xác minh người nhận, ngân hàng hay số tài khoản; không chuyển tiền cho tới khi bạn tự kiểm tra và thay bằng QR đúng.
- Quy trình nạp tiền hiện là thủ công: khách gửi số tiền và mã giao dịch, admin kiểm tra giao dịch thực tế rồi mới duyệt.
- Để xác nhận tiền, Admin dùng mục Yêu cầu nạp. Chỉ duyệt khi tiền đã thực sự vào tài khoản.

## Có gì trong bộ này?
- Đăng ký/đăng nhập Supabase Auth.
- Danh mục sản phẩm từ database, lọc iOS/Android/PC.
- Admin thêm/sửa/xóa sản phẩm.
- Khách gửi yêu cầu nạp; Admin duyệt và cộng số dư ví.
- Tạo đơn hàng ở trạng thái pending; Admin xem danh sách đơn.
- Admin xem danh sách hồ sơ tài khoản; không thể xem mật khẩu.

## Lưu ý
- GitHub Pages chỉ host frontend; Supabase giữ dữ liệu và xác thực.
- Mua hàng chưa tự trừ ví hay giao sản phẩm. Quản lý tài khoản nâng cao (khóa/xóa/reset password) nên thao tác qua Supabase Dashboard.
- Kiểm tra QR và thông tin ngân hàng trước khi nhận tiền thật. Không chia sẻ mật khẩu, OTP hoặc `service_role` key.
