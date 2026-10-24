# Phần Mềm.store — giao diện index 3 + Supabase

## Có trong bộ này
- `index-supabase.html`: giao diện theo mẫu index-3, kết nối Supabase Auth và database.
- `schema.sql`: bảng, quyền truy cập và hàm đặt hàng phù hợp với các trường mà website sử dụng.

## Cài đặt
1. Tạo project tại https://supabase.com.
2. Vào **SQL Editor → New query**, dán toàn bộ `schema.sql`, rồi bấm **Run**.
3. Trong Supabase **Project Settings → API / Connect**, lấy **publishable key** (hoặc anon key công khai). Project URL đã được điền sẵn.
4. Mở `index-supabase.html`, tìm `SUPABASE_URL` và `SUPABASE_PUBLISHABLE_KEY`, Project URL đã được điền sẵn. Publishable key đã được điền sẵn trong file HTML.
5. Đổi tên file thành `index.html` nếu muốn dùng làm trang chủ, rồi tải file cùng `schema.sql` lên GitHub Pages.

## Cấp quyền Admin
1. Đăng ký tài khoản qua website và xác nhận email nếu được yêu cầu.
2. Trong Supabase SQL Editor chạy lệnh dưới đây, thay email bằng email đã đăng ký:
```sql
update public.profiles
set role='admin', display_name='CAO VĂN PHONG THƯ'
where id=(select id from auth.users where email='EMAIL_CUA_BAN');
```
3. Đăng xuất rồi đăng nhập lại để tải quyền mới.

## Lưu ý bảo mật và thanh toán
- Chỉ dùng publishable/anon key ở frontend; tuyệt đối không đưa `service_role` key vào HTML.
- Nạp tiền là yêu cầu thủ công; admin phải xác minh giao dịch thật trước khi duyệt.
- Bản schema này cho phép admin cập nhật trạng thái nạp tiền, nhưng **không tự cộng số dư ví** vì giao diện hiện tại không có bảng ví/số dư.
- Đặt hàng tạo đơn `pending` và giữ chỗ bằng cách trừ tồn kho. Nếu cần hoàn kho khi hủy đơn, hãy bổ sung quy trình xử lý đơn ở backend.
- Kiểm tra kỹ chính sách RLS và thử nghiệm với tài khoản khách/admin trước khi mở bán thật.
