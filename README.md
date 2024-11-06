# AppetizerApp 🍽️

A modern food ordering application built with SwiftUI that allows users to browse and order appetizers. The app follows MVVM architecture and leverages the latest Swift features for a smooth user experience.


<img src = "Appetizer_ScreenRecord-ezgif.com-optimize.gif" width = "300" height = "600"/>

## Features ✨

- **Browse Menu:** View a variety of appetizers with images and descriptions.
- **Real-time Updates:** API-driven data fetching with image caching for optimal performance.
- **User Accounts:** Personalized experience with account management.
- **Multi-tab Interface:** Easy navigation through three main sections.
- **Order Management:** Simple and intuitive ordering process.
- **Persistent Storage:** Save user preferences and account details.

## Technologies Used 🛠️

- **SwiftUI:** Modern declarative UI framework.
- **Combine:** For reactive programming and data flow.
- **MVVM Architecture:** Clean separation of concerns.
- **Swift Property Wrappers:**
  - `@Published` for observable state.
  - `@AppStorage` for persistent storage.
  - `@StateObject` for view model lifecycle management.
- **Async/Await:** Modern concurrency for smooth operations.
- **Image Caching:** Optimized image loading and storage.

## Requirements 📋

- **iOS 15.0+**
- **Xcode 13.0+**
- **Swift 5.5+**

## Installation 💻

Clone the repository:

```bash
git clone https://github.com/shashwat46/AppetizerApp.git

```

Open the project in Xcode : 

```
cd AppetizerApp
open AppetizerApp.xcodeproj
```

Build and run the project using Xcode's simulator or a physical device.

## Architecture 🏗️

The app follows the MVVM (Model-View-ViewModel) architecture:

- **Models:** Data structures for appetizers and user information.
- **Views:** SwiftUI views for the user interface.
- **ViewModels:** Business logic and state management.
- **Services:** API communication and data persistence.

## Key Components 🔑

### Tab-based Navigation
- **Menu browsing**
- **Order management**
- **Account settings**

### Data Management
- Efficient API integration
- Local storage using `@AppStorage`
- Image caching system

### User Account Features
- Profile management
- Preference settings
- Order history
