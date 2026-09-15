# Product Requirements Document (PRD) - DeskIn

## Core Epic: Workspace Discovery & Real-Time Booking Engine

### User Story 1: Discover Workspaces
**As a** freelancer  
**I want to** filter workspaces by location, price, and amenities (Wi-Fi speed, private rooms)  
**So that** I can quickly find a suitable space to work efficiently.

#### Acceptance Criteria:
* **Success:** List of workspaces matching the criteria is displayed.
* **Empty:** If no workspaces match, display an empty state suggesting filter adjustments.
* **Error:** If network request fails, display error banner with a "Retry" button.

### User Story 2: Reserve Time Slot
**As a** customer  
**I want to** select available date and time slots  
**So that** I can reserve a private desk or meeting room.

#### Acceptance Criteria:
* **Success:** Available slots highlighted; total cost updates dynamically upon slot selection.
* **Unavailable:** Busy slots are disabled with visual distinction.