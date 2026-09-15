# Technical Architecture & State Management

## Architecture Pattern
DeskIn follows **Clean Architecture** principles separated into 3 core layers:
1. **Data Layer:** API Services, Remote Data Sources, Data Models & DTOs.
3. **Presentation Layer:** Flutter UI Screens, Widgets, Cubit/BLoC State Management.

## UI States Framework
Every feature state strictly maps to Acceptance Criteria:
* `WorkspaceInitial`
* `WorkspaceLoading`
* `WorkspaceSuccess`
* `WorkspaceEmpty`
* `WorkspaceError`