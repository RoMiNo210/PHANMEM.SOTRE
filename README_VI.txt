ROMINO210 / PHẦN MỀM.STORE — GÓI SỬA GIAO DIỆN QUẢN TRỊ

TỆP TRONG GÓI
- index.html: trang cửa hàng hiện có, giữ tên này khi tải lên GitHub.
- admin.html: trang quản trị đã vá fallback CDN, dùng đúng tham số RPC điều chỉnh số dư và duyệt nạp qua RPC an toàn.
- supabase_deposit_approval_setup.sql: hàm duyệt nạp tiền cho bảng public.deposits hiện tại.

CÀI TRÊN GITHUB BẰNG ANDROID
1. Sao lưu các file đang chạy trước khi thay thế.
2. Giải nén ZIP.
3. Mở repository Romino210 đang dùng GitHub Pages.
4. Upload index.html và admin.html vào đúng thư mục Pages đang xuất bản (cùng cấp; không để trong thư mục con nếu Pages dùng root).
5. Commit changes; chờ 1–5 phút.
6. Mở Chrome tab ẩn danh: https://romino210.github.io/admin.html
7. Nếu vẫn trắng, thử mạng khác và kiểm tra GitHub Pages đang xuất bản đúng branch/folder.

CẤU HÌNH SUPABASE
- Mở Supabase > SQL Editor và chạy supabase_deposit_approval_setup.sql trong đúng project trước khi dùng nút duyệt nạp.
- Admin phải đăng nhập bằng tài khoản website đã được cấp profiles.role = 'admin'. Không cấp admin bằng nút công khai.
- SQL có thể cần chỉnh nếu schema thực tế khác bảng profiles/deposits hoặc kiểu id; hãy sao lưu trước.
- Không đưa service_role/secret key vào HTML. Publishable key chỉ dùng với RLS đúng.

GIỚI HẠN QUAN TRỌNG
- Tự động cộng tiền khi thanh toán thành công chưa thể bật chỉ bằng HTML/SQL này. Cần chọn cổng thanh toán cụ thể (ví dụ Stripe hoặc nhà cung cấp QR/bank có webhook/API), cấu hình thông tin merchant và tạo webhook/Edge Function ở server để xác minh giao dịch. Không tin ảnh chụp/URL quay lại/thông báo do trình duyệt gửi.
- Trừ số dư và tạo đơn cần RPC place_order an toàn ở Supabase; trang cửa hàng hiện gọi RPC này nhưng file này không tự tạo hàm đó. Kiểm tra RPC đã tồn tại và thực hiện trừ tiền + kiểm kho + tạo đơn trong cùng transaction.
- GitHub Pages là hosting tĩnh. Không thể ngăn khách xem mã HTML/JS đã tải xuống. Bảo vệ dữ liệu và thao tác bằng Supabase RLS/RPC/server-side authorization; không dựa vào việc giấu mã.
- Chưa thể xác nhận giao dịch thật hay quyền truy cập live vì không có quyền đăng nhập vào tài khoản GitHub/Supabase của chủ sở hữu.
