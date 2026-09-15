# User Flow & Edge Cases

## Happy Path
Home Screen ➔ Search & Apply Filters ➔ Select Workspace ➔ Choose Time Slot ➔ Booking Review ➔ Confirmation (QR Code Generation)

## Edge Cases & Error Handling
1. **Network Timeout / No Internet:** Show clear offline visual indicator with retry option.
2. **Concurrent Slot Selection:** Notify user immediately if slot becomes unavailable during checkout.
3. **Empty Filter Results:** Guide user to clear filters instead of showing a blank screen.