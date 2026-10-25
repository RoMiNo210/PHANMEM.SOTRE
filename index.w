<!doctype html>
<html lang="vi">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="theme-color" content="#0d0a1d">
<title>Phần Mềm.store — Cửa Hàng Mod & Software Cao Cấp</title>

<!-- Font & Icons -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root {
  --bg: #070510;
  --bg-card: rgba(18, 14, 36, 0.7);
  --panel: #110d28;
  --line: rgba(168, 85, 247, 0.18);
  --line-hover: rgba(168, 85, 247, 0.5);
  --text: #f5f3ff;
  --muted: #948eb0;
  --accent: #a855f7;
  --accent-glow: rgba(168, 85, 247, 0.4);
  --cyan: #38bdf8;
  --green: #22c55e;
  --red: #ef4444;
  --gold: #f59e0b;
  --radius: 16px;
  --transition: all 0.25s cubic-bezier(0.4, 0, 0.2, 1);
}

* { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Plus Jakarta Sans', system-ui, sans-serif; }
html { scroll-behavior: smooth; }
body { background: var(--bg); color: var(--text); min-height: 100vh; overflow-x: hidden; line-height: 1.6; }

.bg-glow {
  position: fixed; inset: 0; pointer-events: none; z-index: -1;
  background: 
    radial-gradient(circle at 15% 15%, rgba(147, 51, 234, 0.15) 0%, transparent 40%),
    radial-gradient(circle at 85% 25%, rgba(56, 189, 248, 0.12) 0%, transparent 35%),
    radial-gradient(circle at 50% 80%, rgba(236, 72, 153, 0.08) 0%, transparent 45%);
}

.wrap { max-width: 1240px; margin: auto; padding: 0 20px; }

header { position: sticky; top: 0; background: rgba(7, 5, 16, 0.85); backdrop-filter: blur(20px); border-bottom: 1px solid var(--line); z-index: 100; }
.nav { display: flex; align-items: center; justify-content: space-between; height: 72px; gap: 15px; }
.brand { font-weight: 900; font-size: 1.45rem; letter-spacing: -0.03em; color: #fff; display: flex; align-items: center; gap: 10px; text-decoration: none; }
.brand i { color: var(--accent); filter: drop-shadow(0 0 10px var(--accent)); }
.brand span { color: var(--cyan); }

.navlinks { display: flex; gap: 10px; align-items: center; }

/* Menu 3 Gạch Button */
.menu-toggle {
  display: none;
  background: rgba(255, 255, 255, 0.05);
  border: 1px solid var(--line);
  color: #fff;
  padding: 10px 14px;
  border-radius: 12px;
  font-size: 1.2rem;
  cursor: pointer;
}

/* Mobile Sidebar Drawer */
.mobile-drawer-backdrop {
  position: fixed; inset: 0; background: rgba(0,0,0,0.7); backdrop-filter: blur(8px);
  z-index: 999; opacity: 0; pointer-events: none; transition: var(--transition);
}
.mobile-drawer-backdrop.active { opacity: 1; pointer-events: auto; }
.mobile-drawer {
  position: fixed; top: 0; left: -280px; width: 280px; height: 100%;
  background: #0d0a1d; border-right: 1px solid var(--line); z-index: 1000; padding: 24px;
  display: flex; flex-direction: column; gap: 15px; transition: var(--transition);
}
.mobile-drawer.active { left: 0; }
.drawer-head { display: flex; justify-content: space-between; align-items: center; padding-bottom: 15px; border-bottom: 1px solid var(--line); }
.drawer-link { display: flex; align-items: center; gap: 12px; padding: 12px 16px; border-radius: 12px; color: var(--text); text-decoration: none; font-weight: 600; background: rgba(255,255,255,0.02); border: 1px solid transparent; transition: var(--transition); }
.drawer-link:hover, .drawer-link.active { background: rgba(168, 85, 247, 0.15); border-color: var(--accent); color: #fff; }

button, .btn {
  font-weight: 700; font-size: 0.88rem; border-radius: 12px; padding: 10px 18px; border: none; cursor: pointer;
  display: inline-flex; align-items: center; justify-content: center; gap: 8px; transition: var(--transition);
  text-decoration: none; color: #fff; background: linear-gradient(135deg, #9333ea, #a855f7); box-shadow: 0 4px 20px var(--accent-glow);
}
button:hover, .btn:hover { transform: translateY(-2px); filter: brightness(1.1); box-shadow: 0 6px 25px rgba(168, 85, 247, 0.6); }
button.secondary { background: rgba(255, 255, 255, 0.05); color: var(--text); border: 1px solid var(--line); box-shadow: none; }
button.secondary:hover { background: rgba(168, 85, 247, 0.15); border-color: var(--accent); }
button.danger { background: linear-gradient(135deg, #dc2626, #ef4444); }
button.success { background: linear-gradient(135deg, #16a34a, #2
  <main class="wrap">

  <!-- HERO SECTION -->
  <section class="hero">
    <div class="pill"><i class="fa-solid fa-sparkles"></i> PHIÊN BẢN CẬP NHẬT MỚI NHẤT 2026</div>
    <h1>Cung Cấp Mod Menu & <br><span class="gradient">Công Cụ Trò Chơi Cao Cấp</span></h1>
    <p>Hệ thống tự động 100%, trừ tiền tự động & cấp Key / File nhận ngay lập tức!</p>
    <div id="connection" class="status" style="max-width:540px; margin:24px auto 0;">Đang kết nối hệ thống...</div>
  </section>

  <!-- AUTH BOX -->
  <div id="authBox" class="panel hidden" style="max-width:480px; margin:0 auto 30px;">
    <h2 id="authTitle" style="font-weight:800; margin-bottom:10px;"><i class="fa-solid fa-right-to-bracket"></i> Đăng nhập</h2>
    <div id="authMsg" class="status hidden"></div>
    <label>Tên tài khoản</label>
    <input id="authUsername" placeholder="Nhập tên tài khoản..." maxlength="24">
    <label>Mật khẩu</label>
    <input id="authPassword" type="password" placeholder="Nhập mật khẩu...">
    <div style="display:flex; gap:10px; margin-top:20px;">
      <button id="authSubmitBtn" onclick="submitAuth()" style="flex:1">Tiếp tục</button>
      <button class="secondary" onclick="toggleAuthMode()">Đổi chế độ</button>
      <button class="secondary" onclick="hideAuth()">Đóng</button>
    </div>
  </div>

  <!-- USER AREA -->
  <section id="userArea" class="panel hidden">
    <div style="display:flex; justify-content:space-between; align-items:center; margin-bottom:20px;">
      <div>
        <h2 id="welcome" style="font-weight:800; font-size:1.5rem">Tài khoản của bạn</h2>
        <p class="muted" style="font-size:0.88rem">Quản lý số dư và lịch sử giao dịch cá nhân</p>
      </div>
      <div style="display:flex; gap:10px;">
        <button class="danger" onclick="logout()"><i class="fa-solid fa-right-from-bracket"></i> Đăng xuất</button>
      </div>
    </div>

    <div id="adminShortcut" class="hidden" style="margin-bottom:20px;">
      <button class="success" onclick="document.querySelector('#admin').classList.remove('hidden'); document.querySelector('#admin').scrollIntoView({behavior:'smooth'});"><i class="fa-solid fa-user-shield"></i> Mở Bảng Quản Trị Admin</button>
    </div>

    <div class="grid">
      <!-- User Orders -->
      <div class="card" style="grid-column: 1 / -1;">
        <h3><i class="fa-solid fa-bag-shopping" style="color:var(--cyan)"></i> Lịch Sử Đơn Hàng Đã Mua (Nhận Key / File)</h3>
        <div id="myOrders" class="muted" style="font-size:0.85rem; margin-top:10px;">Đang tải danh sách...</div>
      </div>
    </div>
  </section>

  <!-- PRODUCTS SECTION -->
  <section id="products" style="padding: 20px 0 60px;">
    <div class="filter-bar">
      <div class="cat-btn-group">
        <button class="cat-btn active" data-cat="Tất Cả" onclick="setCategory('Tất Cả')">Tất Cả</button>
        <button class="cat-btn" data-cat="iOS" onclick="setCategory('iOS')">iOS</button>
        <button class="cat-btn" data-cat="Android" onclick="setCategory('Android')">Android</button>
        <button class="cat-btn" data-cat="PC" onclick="setCategory('PC')">PC</button>
      </div>
      <div class="search-box" style="flex:1; max-width:300px;">
        <input id="search" placeholder="🔎 Tìm phần mềm..." oninput="renderProducts()">
      </div>
    </div>

    <div id="productList" class="grid"></div>
  </section>

  <!-- ADMIN PANEL -->
  <section id="admin" class="panel hidden">
    <h2><i class="fa-solid fa-user-shield" style="color:var(--accent)"></i> Quản Trị Cửa Hàng</h2>
    <div style="display:flex; gap:10px; margin:20px 0;">
      <button class="secondary" onclick="adminTab('product')">Sản Phẩm</button>
      <button class="secondary" onclick="adminTab('deposits')">Duyệt Nạp Tiền</button>
    </div>

    <div id="adminProduct">
      <h3 style="margin-bottom:10px;">Thêm / Chỉnh Sửa Sản Phẩm</h3>
      <input id="editId" type="hidden">
      <div class="grid" style="grid-template-columns:1fr 1fr; gap:15px;">
        <div>
          <label>Tên sản phẩm</label>
          <input id="pName" placeholder="Ví dụ: AIMLOCK VIP">
        </div>
        <div>
          <label>Danh mục (HĐH)</label>
          <select id="pCategory">
            <option value="iOS">iOS</option>
            <option value="Android">Android</option>
            <option value="PC">PC</option>
          </select>
        </div>
      </div>

      <label>Mô tả sản phẩm</label>
      <textarea id="pDesc" rows="2" placeholder="Mô tả tính năng..."></textarea>

      <label style="color:var(--cyan);">Nội dung giao cho khách khi mua (Key, Link File, ACC...)</label>
      <textarea id="pContent" rows="3" placeholder="Nhập Key kích hoạt hoặc Link Google Drive tải File tại đây..."></textarea>

      <div class="grid" style="grid-template-columns:1fr 1fr; gap:15px;">
        <div>
          <label>Giá bán (VNĐ)</label>
          <input id="pPrice" type="number" min="0" value="100000">
        </div>
        <div>
          <label>Số lượng tồn kho</label>
          <input id="pStock" type="number" min="0" value="999">
        </div>
      </div>

      <label>URL Hình ảnh</label>
      <input id="pImage" placeholder="https://i.imgur.com/...">

      <div style="display:flex; gap:10px; margin-top:15px;">
        <button onclick="saveProduct()"><i class="fa-solid fa-floppy-disk"></i> Lưu Sản Phẩm</button>
        <button class="secondary" onclick="clearProductForm()">Xóa Form</button>
      </div>

      <h3 style="margin-top:30px;">Danh Sách Sản Phẩm</h3>
      <div id="adminProducts" class="table-wrap"></div>
    </div>

    <div id="adminDeposits" class="hidden">
      <h3>Yêu Cầu Nạp Tiền</h3>
      <div id="allDeposits" class="table-wrap"></div>
    </div>
  </section>

</main>

<!-- MODAL GIAO SẢN PHẨM TỰ ĐỘNG -->
<div id="deliveredModal" class="modal-backdrop" hidden onclick="if(event.target===this)closeDeliveredModal()">
  <div class="modal-window">
    <div class="modal-head">
      <h2 style="color:var(--green); font-size:1.3rem;"><i class="fa-solid fa-circle-check"></i> Mua Hàng Thành Công!</h2>
      <button class="secondary" onclick="closeDeliveredModal()">✕</button>
    </div>
    <p class="muted" style="margin-bottom:12px;">Dưới đây là thông tin sản phẩm / Key / Link tải của bạn:</p>

    <div style="background:rgba(255,255,255,0.05); border:1px solid var(--accent); border-radius:12px; padding:15px; margin-bottom:20px;">
      <textarea id="deliveredContent" readonly rows="4" style="background:transparent; border:none; color:#c084fc; font-weight:700; font-family:monospace; resize:none;"></textarea>
    </div>

    <div style="display:flex; gap:10px;">
      <button style="flex:1;" onclick="copyDeliveredContent()"><i class="fa-solid fa-copy"></i> Sao Chép Nội Dung</button>
      <button class="secondary" onclick="closeDeliveredModal()">Đóng</button>
    </div>
  </div>
</div>

<!-- MODAL DEPOSIT QR -->
<div id="depositModal" class="modal-backdrop" hidden onclick="if(event.target===this)closeDepositModal()">
  <div class="modal-window">
    <div class="modal-head">
      <h2>Nạp Tiền Qua QR</h2>
      <button class="secondary" onclick="closeDepositModal()">✕</button>
    </div>
    <p class="muted">Gửi tiền kèm nội dung ghi chú bên dưới để được xác nhận nhanh nhất.</p>
    <input id="modalQrNote" readonly style="margin-top:10px; font-weight:700; text-align:center;" value="NAPTIEN PHAMMEMSTORE">
  </div>
</div>

<div id="toast-container"></div>
  <script src="https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2"></script>
<script>
const SUPABASE_URL = "https://rrpogfsoiuwkrubaujvi.supabase.co";
const SUPABASE_PUBLISHABLE_KEY = "sb_publishable_9M2ne0k2IU0-LwUXXeV0mg_jxGaM5tI";

const configured = /^https:\/\//.test(SUPABASE_URL) && Boolean(SUPABASE_PUBLISHABLE_KEY);
const db = configured && window.supabase ? window.supabase.createClient(SUPABASE_URL, SUPABASE_PUBLISHABLE_KEY) : null;

let session = null;
let profile = null;
let products = [];
let activeCategory = "Tất Cả";
let authMode = "login";

const $ = id => document.getElementById(id);
const money = n => new Intl.NumberFormat("vi-VN", { style: "currency", currency: "VND", maximumFractionDigits: 0 }).format(Number(n || 0));
const esc = s => String(s ?? "").replace(/[&<>"']/g, c => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }[c]));

function toggleDrawer(open) {
  $("mobileDrawer").classList.toggle("active", open);
  $("drawerBackdrop").classList.toggle("active", open);
}

function showToast(message, type = "info") {
  const container = $("toast-container");
  const toast = document.createElement("div");
  toast.className = "toast";
  toast.innerHTML = `<span>${esc(message)}</span>`;
  container.appendChild(toast);
  setTimeout(() => toast.remove(), 3500);
}

function showAuth() { $("authBox").classList.remove("hidden"); }
function hideAuth() { $("authBox").classList.add("hidden"); }
function toggleUserArea() { $("userArea").classList.toggle("hidden"); }

function openDepositModal() {
  if (!session) return showAuth();
  $("depositModal").hidden = false;
}
function closeDepositModal() { $("depositModal").hidden = true; }

function closeDeliveredModal() { $("deliveredModal").hidden = true; }
function copyDeliveredContent() {
  const txt = $("deliveredContent");
  txt.select();
  navigator.clipboard.writeText(txt.value);
  showToast("Đã sao chép thành công!", "success");
}

function toggleAuthMode() {
  authMode = authMode === "login" ? "signup" : "login";
  $("authTitle").innerHTML = authMode === "login" ? '<i class="fa-solid fa-right-to-bracket"></i> Đăng nhập' : '<i class="fa-solid fa-user-plus"></i> Tạo tài khoản';
  $("authUsername").placeholder = authMode === "login" ? "Tên tài khoản..." : "Tên đăng ký mới...";
}

async function submitAuth() {
  const username = $("authUsername").value.trim().toLowerCase();
  const password = $("authPassword").value;
  const email = username + "@accounts.phammem.store";

  let r = authMode === "signup" ? 
    await db.auth.signUp({ email, password, options: { data: { username, display_name: username } } }) :
    await db.auth.signInWithPassword({ email, password });

  if (r.error) return showToast(r.error.message, "error");
  session = r.data.session;
  await onSignedIn();
  hideAuth();
}

async function logout() {
  await db.auth.signOut();
  location.reload();
}

async function onSignedIn() {
  const u = session.user;
  let r = await db.from("profiles").select("*").eq("id", u.id).maybeSingle();
  profile = r.data;

  const uname = profile?.display_name || u.email.split('@')[0];
  const formattedBal = money(profile?.balance ?? 0);

  $("accountBtn").innerHTML = `<span>${esc(uname)}</span>`;
  $("walletChip").classList.remove("hidden");
  $("headerUsername").textContent = uname;
  $("headerBalance").textContent = formattedBal;

  $("drawerWallet").classList.remove("hidden");
  $("drawerUsername").textContent = uname;
  $("drawerBalance").textContent = formattedBal;

  $("userArea").classList.remove("hidden");
  $("welcome").textContent = "Xin chào, " + uname;

  if (profile?.role === "admin") {
    $("adminShortcut").classList.remove("hidden");
    $("drawerAdminLink").classList.remove("hidden");
    loadAdmin();
  }
  refreshMyData();
}

async function refreshMyData() {
  if (!session) return;
  const o = await db.from("orders").select("*").eq("user_id", session.user.id).order("created_at", { ascending: false });
  
  $("myOrders").innerHTML = o.data?.length ? o.data.map(x => `
    <div style="padding:12px; background:rgba(255,255,255,0.03); border-radius:10px; margin-bottom:8px; border:1px solid var(--line);">
      <div style="display:flex; justify-content:space-between;">
        <strong style="color:#fff;">${esc(x.product_name)}</strong>
        <span style="color:var(--accent); font-weight:700;">${money(x.total)}</span>
      </div>
      <div style="margin-top:8px; background:#000; padding:8px 12px; border-radius:6px; font-family:monospace; color:#86efac; font-size:0.85rem;">
        ${esc(x.content_delivered || 'Chưa có nội dung')}
      </div>
    </div>
  `).join("") : "Chưa mua đơn hàng nào.";
  }
  async function loadProducts() {
  if (!db) {
    $("connection").textContent = "Chưa kết nối CSDL Supabase";
    return;
  }
  const r = await db.from("products").select("*").eq("active", true).order("created_at", { ascending: false });
  products = r.data || [];
  $("connection").textContent = `Đã kết nối CSDL · ${products.length} sản phẩm`;
  $("connection").className = "status ok";
  renderProducts();
}

function setCategory(cat) {
  activeCategory = cat;
  document.querySelectorAll(".cat-btn").forEach(btn => btn.classList.toggle("active", btn.textContent.includes(cat)));
  renderProducts();
}

function renderProducts() {
  const query = $("search").value.toLowerCase();
  let filtered = products.filter(p => (activeCategory === "Tất Cả" || p.category === activeCategory) && p.name.toLowerCase().includes(query));

  $("productList").innerHTML = filtered.map(p => `
    <div class="card">
      <div class="product-img"><img src="${p.image_url || 'https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?auto=format&fit=crop&w=600&q=80'}"></div>
      <div class="card-title">${esc(p.name)}</div>
      <div class="card-desc">${esc(p.description)}</div>
      <div class="buyrow">
        <div class="price">${money(p.price)}</div>
        <button onclick="buyProduct('${p.id}')"><i class="fa-solid fa-cart-shopping"></i> Mua Ngay</button>
      </div>
    </div>
  `).join("");
}

// MUA HÀNG & PHÁT KEY TỰ ĐỘNG
async function buyProduct(id) {
  if (!session) return showAuth();
  const p = products.find(x => x.id === id);
  if (!p) return;

  if ((profile?.balance || 0) < p.price) {
    return showToast("Số dư không đủ! Vui lòng nạp thêm tiền.", "error");
  }

  if (confirm(`Xác nhận mua "${p.name}" với giá ${money(p.price)}?`)) {
    const newBal = profile.balance - p.price;
    await db.from("profiles").update({ balance: newBal }).eq("id", session.user.id);

    const delivered = p.content || "Cảm ơn bạn đã mua hàng! Vui lòng liên hệ CSKH để nhận file.";
    await db.from("orders").insert({
      user_id: session.user.id,
      product_name: p.name,
      quantity: 1,
      total: p.price,
      content_delivered: delivered,
      status: "Thành công"
    });

    profile.balance = newBal;
    $("headerBalance").textContent = money(newBal);
    $("drawerBalance").textContent = money(newBal);
    
    $("deliveredContent").value = delivered;
    $("deliveredModal").hidden = false;

    refreshMyData();
  }
}

// ADMIN FUNCTIONS
async function loadAdmin() {
  adminTab('product');
}

function adminTab(tab) {
  $("adminProduct").classList.toggle("hidden", tab !== 'product');
  $("adminDeposits").classList.toggle("hidden", tab !== 'deposits');
  if (tab === 'product') renderAdminProducts();
  if (tab === 'deposits') renderAdminDeposits();
}

function renderAdminProducts() {
  $("adminProducts").innerHTML = `
    <table>
      <thead><tr><th>Tên</th><th>Giá</th><th>Nội dung giao</th><th>Thao tác</th></tr></thead>
      <tbody>
        ${products.map(p => `
          <tr>
            <td><b>${esc(p.name)}</b></td>
            <td>${money(p.price)}</td>
            <td style="font-family:monospace; color:var(--cyan);">${esc(p.content || '-')}</td>
            <td><button class="secondary" style="padding:4px 8px;" onclick="editProduct('${p.id}')">Sửa</button></td>
          </tr>
        `).join("")}
      </tbody>
    </table>
  `;
}

async function renderAdminDeposits() {
  const r = await db.from("deposits").select("*, profiles(display_name)").order("created_at", { ascending: false });
  const list = r.data || [];

  $("allDeposits").innerHTML = `
    <table>
      <thead><tr><th>Người nạp</th><th>Số tiền</th><th>Ghi chú</th><th>Thao tác</th></tr></thead>
      <tbody>
        ${list.map(d => `
          <tr>
            <td><b>${esc(d.profiles?.display_name || d.user_id)}</b></td>
            <td style="color:var(--green);">${money(d.amount)}</td>
            <td>${esc(d.note || '-')}</td>
            <td>
              ${d.status === 'Đang chờ' ? `<button class="success" style="padding:4px 8px;" onclick="approveDeposit('${d.id}', '${d.user_id}', ${d.amount})">Duyệt Cộng Tiền</button>` : 'Đã duyệt'}
            </td>
          </tr>
        `).join("")}
      </tbody>
    </table>
  `;
}

async function approveDeposit(depositId, userId, amount) {
  const p = await db.from("profiles").select("balance").eq("id", userId).single();
  const currentBal = p.data?.balance || 0;

  await db.from("profiles").update({ balance: currentBal + Number(amount) }).eq("id", userId);
  await db.from("deposits").update({ status: "Đã cộng tiền" }).eq("id", depositId);

  showToast("Đã duyệt nạp tiền!", "success");
  renderAdminDeposits();
}

async function saveProduct() {
  const payload = {
    name: $("pName").value.trim(),
    category: $("pCategory").value,
    description: $("pDesc").value.trim(),
    content: $("pContent").value.trim(),
    price: Number($("pPrice").value),
    stock: Number($("pStock").value),
    image_url: $("pImage").value.trim(),
    active: true
  };

  const editId = $("editId").value;
  if (editId) {
    await db.from("products").update(payload).eq("id", editId);
  } else {
    await db.from("products").insert(payload);
  }

  showToast("Lưu sản phẩm thành công!", "success");
  clearProductForm();
  loadProducts();
}

function clearProductForm() {
  $("editId").value = ""; $("pName").value = ""; $("pDesc").value = ""; $("pContent").value = ""; $("pPrice").value = "100000";
}

function editProduct(id) {
  const p = products.find(x => x.id === id);
  if (!p) return;
  $("editId").value = p.id;
  $("pName").value = p.name;
  $("pDesc").value = p.description || "";
  $("pContent").value = p.content || "";
  $("pPrice").value = p.price;
}

window.addEventListener("DOMContentLoaded", async () => {
  if (db) {
    const s = await db.auth.getSession();
    session = s.data.session;
    if (session) await onSignedIn();
  }
  loadProducts();
});
</script>
</body>
</html>
  
