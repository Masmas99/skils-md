# Rule: Instant Visual Feedback Everywhere

Every user action must produce instant, satisfying visual acknowledgment. A static, unreactive interface feels broken and unresponsive.

## Guidelines
1. **Action & Loading States**:
   - Clicking an action button (e.g., "Beli Sekarang", "Simpan Produk") must immediately display a loading state (subtle spinner or disabled opacity) to prevent duplicate clicks.
2. **Toast Notifications**:
   - Completed actions (e.g., added to cart, copied link, saved setting) must trigger an elegant toast alert in the top-right corner that auto-dismisses after 3 seconds.
3. **Skeleton Loading Shimmers**:
   - When data or cards are being initialized, display lightweight skeleton shimmer cards instead of jarring blank spaces.
4. **Copy Feedback**:
   - Clicking a phone number, bank account, or voucher code must copy to clipboard and immediately flash a "Tersalin!" badge or tooltip.
