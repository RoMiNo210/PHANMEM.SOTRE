PHẦN MỀM.STORE — GIỮ NGUYÊN GIAO DIỆN CŨ

Bộ file này lấy nguyên file index.html cũ (các ảnh sản phẩm nhúng sẵn và giao diện gaming được giữ nguyên). Thay đổi trong HTML chỉ là 2 dòng cấu hình Supabase:
- Project URL: https://twvvvvpriybbiiobilao.supabase.co
- Publishable key: sb_publishable_... (khóa công khai dùng được ở frontend; không phải secret key)

CÀI ĐẶT
1. Tải index.html và setup.sql.
2. Vào Supabase Dashboard > dự án mới > SQL Editor > New query.
3. Dán toàn bộ setup.sql và bấm Run. Nếu có lỗi, dừng và gửi lỗi để xử lý.
4. Tạo tài khoản trên website.
5. Cấp quyền admin cho tài khoản đó bằng SQL sau, thay email thật:
   update public.profiles set role='admin' where lower(email)=lower('EMAIL_CUA_BAN');
6. Đăng xuất/đăng nhập lại. Mở mục Quản trị Admin.

LƯU Ý
- Không có secret/service_role key trong HTML.
- SQL không tự xóa bảng/dữ liệu; các policy có tên trùng sẽ được thay thế.
- Chức năng mua hàng trừ số dư và giảm tồn kho thông qua RPC purchase_product.
- Số dư chỉ nên được cộng sau khi xác minh giao dịch thật.
- File này giữ nguyên giao diện, không dựng lại thiết kế.
