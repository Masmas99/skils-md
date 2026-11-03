---
name: landingpage-dashboard
description: >-
  Build high-converting, modern animated landing pages paired with private left-sidebar admin dashboards.
  Enforces hidden admin access (never linked in public navbar), smooth interactive animations,
  lightweight optimized assets, and clear handover instructions for admin URLs and asset customization.
---

# Landing Page with Private Left-Sidebar Dashboard Skill

## 1. Purpose
Guide the development of high-impact, beautifully animated public landing pages coupled with private, functional admin dashboards. Enforces complete isolation of admin access from public navigation, establishes left-sidebar dashboard ergonomics, ensures lightweight asset performance, and guarantees a comprehensive post-build usage guide.

## 2. When to Use
- Whenever building a marketing landing page that requires an accompanying management dashboard (e.g., product catalog + inventory admin, service bookings + admin orders, portfolio + content manager).
- When the user asks for a website with an admin panel or dashboard.
- When creating animated, interactive promotional pages that need backend/admin controls.

## 3. Workflow
1. **Landing Page Architecture & Navigation**:
   - Design public navigation with customer-facing links only (e.g., *Koleksi, Inspirasi, Tentang, Cara Pesan, Kontak*).
   - **STRICTLY PROHIBITED**: Never include a "Dashboard Admin", "Admin Panel", or login button in the public navbar or footer.
2. **Dashboard Isolation & Left-Sidebar Layout**:
   - Create the admin dashboard in a separate, unlinked file (e.g., `admin.html` or `/admin`).
   - Structure the dashboard with a persistent **Left Sidebar** containing navigation links and functional icons.
   - On mobile viewports (<768px), collapse the left sidebar into an accessible left-edge drawer.
3. **Smooth Interactive Animations**:
   - Integrate lightweight, hardware-accelerated animations using native CSS transitions and subtle JavaScript triggers (e.g., intersection observer for scroll-fade/slide-up).
   - Implement interactive micro-interactions: smooth card hover lifts, navbar background blur on scroll, modal scale-in, and smooth accordion transitions.
   - Zero heavy, bloated external animation dependencies (no heavy canvas or giant 3D runtimes unless requested).
4. **Lightweight Asset Optimization**:
   - Use modern WebP format for raster images, native vector SVGs for essential functional icons, and standard CSS shapes.
   - Enforce explicit `width` and `height` attributes to prevent Cumulative Layout Shift (CLS).
   - Store all media in an organized `assets/` or `images/` directory with clean naming conventions.
5. **Testing & Workspace Cleanup**:
   - Verify layout responsiveness across all 7 viewports (320px to 1920px).
   - Delete all temporary test files (`TEST_REPORT.md`, `RESPONSIVE_CHECKLIST.md`, `CHANGELOG.md`).
6. **Handover & Asset Customization Guide**:
   - In the final chat response, explicitly provide:
     - The exact Admin URL and relative file path (e.g., `admin.html`).
     - Step-by-step instructions on where images, text, and data assets are located.
     - Clear directions on how the user can easily swap out or update their assets.

## 4. Implementation Guidelines
- **Public Navbar**: Clean, customer-only navigation. Keep the admin dashboard private and accessible only by directly entering the file/URL.
- **Left Sidebar Dashboard**:
  ```html
  <!-- Desktop Layout Structure -->
  <div class="flex h-screen bg-gray-50">
    <!-- Left Sidebar -->
    <aside class="w-64 bg-white border-r border-gray-200 flex flex-col">
      ...
    </aside>
    <!-- Main Content Area -->
    <main class="flex-1 overflow-y-auto p-6 md:p-8">
      ...
    </main>
  </div>
  ```
- **Lightweight Animations**:
  ```css
  /* Hardware-accelerated CSS scroll reveal */
  .reveal-on-scroll {
    opacity: 0;
    transform: translateY(20px);
    transition: opacity 0.6s ease-out, transform 0.6s ease-out;
    will-change: opacity, transform;
  }
  .reveal-on-scroll.is-visible {
    opacity: 1;
    transform: translateY(0);
  }
  ```

## 5. Restrictions
- **STRICTLY FORBIDDEN**: Never put a "Dashboard Admin", "Admin", or login button in the public landing page header or footer navigation.
- **STRICTLY FORBIDDEN**: The dashboard sidebar must never be positioned on the right side; it must always be anchored on the left.
- **STRICTLY FORBIDDEN**: Do not use heavy, slow, or unoptimized images (>300KB) that bog down the landing page speed.
- **STRICTLY FORBIDDEN**: Do not omit the post-build handover guide. You must always tell the user the admin location and how to customize assets.

## 6. Testing Checklist
- [ ] Public landing page has zero visible admin links in navbar and footer.
- [ ] Admin dashboard accessible at dedicated route (e.g., `admin.html`).
- [ ] Dashboard sidebar is cleanly positioned on the left.
- [ ] Animations run smoothly (60fps) without layout shifts or stutters.
- [ ] All assets are lightweight, optimized (WebP/SVG), and load instantly.
- [ ] 7-viewport responsive checks pass with zero horizontal scroll.
- [ ] Post-build handover guide delivered in chat.

## 7. Completion Criteria
- Flawless, animated landing page and private left-sidebar dashboard delivered, with complete handover guide explaining admin URL and asset replacement.
