# User Flow & Edge Cases

## Happy Path
Home Screen ➔ Search & Apply Filters ➔ Select Workspace ➔ Choose Time Slot ➔ Booking Review ➔ Confirmation (QR Code Generation)

## Edge Cases & Error Handling
1. **Network Timeout / No Internet:** Show clear offline visual indicator with retry option.
2. **Concurrent Slot Selection:** Notify user immediately if slot becomes unavailable during checkout.
3. **Empty Filter Results:** Guide user to clear filters instead of showing a blank screen.

## Visual User Flow Diagram

```mermaid
flowchart TD
    Start([Open DeskIn App]) --> Auth{Is User Logged In?}
    
    Auth -- No --> Login[Login / Register Screen]
    Login --> Home[Home Screen]
    Auth -- Yes --> Home
    
    Home --> Search[Search & Apply Filters]
    Search --> List[View Matching Workspaces]
    
    List --> EmptyCheck{Any Spaces Found?}
    EmptyCheck -- No --> EmptyState[Display Empty State & Prompt Reset Filters]
    EmptyCheck -- Yes --> SelectSpace[Select Workspace Details]
    
    SelectSpace --> SelectSlot[Select Date & Time Slot]
    SelectSlot --> SlotCheck{Is Slot Available?}
    
    SlotCheck -- No --> SlotError[Show Slot Unavailable Alert]
    SlotCheck -- Yes --> Review[Booking Review & Price Calculation]
    
    Review --> Pay[Proceed to Payment]
    Pay --> PayCheck{Payment Successful?}
    
    PayCheck -- No --> PayError[Show Payment Failure & Retry Option]
    PayCheck -- Yes --> Success[Generate Confirmation & QR Code Pass]