---
name: delight-interactions
description: >-
  Integrate premium micro-interactions, toast notifications, skeleton loaders,
  button loading states, and clipboard feedback for a polished, modern UX.
---

# Delight Interactions Skill

## 1. Purpose
Elevate plain web pages into premium, responsive experiences by embedding delightful micro-interactions, feedback states, and smooth interface transitions.

## 2. When to Use
- When styling or implementing buttons, carts, forms, or data displays.
- When handling user click events that trigger asynchronous or stateful operations.
- To make a prototype feel like a finished, high-budget web application.

## 3. Workflow
1. **Toast Notification System**:
   - Inject a lightweight, self-contained toast container in the top-right corner.
   - Expose a simple helper: `showToast("Pesanan berhasil ditambahkan!", "success")`.
2. **Button Loading States**:
   - On click, temporarily swap button text with a clean SVG spinner and disable click events until complete.
3. **Skeleton Shimmer Loaders**:
   - Provide CSS skeleton placeholders for cards and tables while content loads.
4. **Copy-to-Clipboard Feedback**:
   - Attach click-to-copy handlers to WhatsApp links, vouchers, or account numbers with immediate visual tooltip feedback.
5. **Smooth Accordions & Modals**:
   - Ensure modals open with subtle scale-in animations and backdrop blur.

## 4. Implementation Guidelines
- Keep all interactive helpers lightweight (<50 lines of vanilla JS):
  ```javascript
  function showToast(msg, type = 'success') {
    const toast = document.createElement('div');
    toast.className = 'fixed top-4 right-4 z-50 bg-slate-900 text-white px-4 py-3 rounded-lg shadow-lg text-sm font-medium transition-all transform duration-300';
    toast.textContent = msg;
    document.body.appendChild(toast);
    setTimeout(() => { toast.classList.add('opacity-0', 'translate-y-[-10px]'); setTimeout(() => toast.remove(), 300); }, 3000);
  }
  ```
- Use CSS transitions for micro-interactions to ensure 60fps fluidity.

## 5. Restrictions
- Do not import massive, heavy animation libraries when vanilla CSS/JS achieves the same effect.
- Do not create intrusive popups that block the user from reading content.

## 6. Testing Checklist
- [ ] Toast notification triggers cleanly and auto-dismisses.
- [ ] Action buttons display loading feedback on click.
- [ ] Copy-to-clipboard works with visual feedback.
- [ ] Animations run at 60 FPS without layout shift.

## 7. Completion Criteria
- Highly interactive, polished UI with immediate visual feedback across all key user actions.
