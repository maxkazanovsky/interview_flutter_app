# Test app



## Getting Started 🚀

## Generating files

Some packages used in the project require the developer to generate files. To do that, run this
command in the project workspace:

```sh
flutter pub run build_runner build --delete-conflicting-outputs
```

To generate l10n files, run:

```sh
flutter pub global run intl_utils:generate
```

To generate icons:

```sh
dart run flutter_launcher_icons:main
```

## New Features

I have added smooth animations throughout the entire application to ensure the best user experience. 
Additionally, I implemented a parallax effect on the background image, which moves with each new page transition to create a visually appealing effect.
I also added basic validation to the app to ensure that users enter data correctly.


# Optimizations

## Camera Page Optimization
- Refactored the camera page using Cubit for state management. Previously, the page unnecessarily created a new controller each time it was accessed. Now, the controller is initialized only when needed, reducing redundant operations and memory overhead.

## Bloc Builders Optimization
- Optimized `BlocBuilder` implementations to rebuild UI components only when required by implementing precise `buildWhen` logic. This minimizes unnecessary UI redraws and enhances app responsiveness.

## Animation Readability
- Improved the creation of animations by restructuring the code for better readability and maintainability. Animations are now centralized and parameterized for consistency and reduced complexity.

## Asset Optimization
- Reduced asset sizes, including background images, by compressing and optimizing them. This significantly reduced the overall app size, improving load times and performance.

# Performance Improvements (Justification)

## Memory Usage
- Ensured all controllers and resources follow a proper lifecycle management process. For instance, controllers are disposed of when no longer required, preventing memory leaks.
- Reused existing widgets wherever possible to avoid redundant widget creation.

## CPU Usage
- Applied `BlocBuilder`'s `buildWhen` to rebuild only necessary UI components, reducing excessive computations.
- Leveraged immutable states with Freezed to ensure efficient state change detection and minimize unnecessary processing.

## Battery Usage
- Optimized background tasks and animations to reduce strain on the device battery.
- Reduced CPU-intensive operations, ensuring smooth performance even on low-end devices.

## Network Usage
- This app is not using network calls.

## App Size
- Compressed image and other asset sizes to lower the overall app size while maintaining quality.
- Removed unused dependencies and ensured efficient usage of third-party libraries.
    
# Additional Optimizations

## Styling for Multiple Devices
- Ensured responsive UI styling to support a seamless experience across all device sizes, including iPhone 16 Pro Max and iPhone 13 Mini. Used constraints, flexible layouts, and appropriate breakpoints for consistent appearance.

## Bug Fixes (iOS/Android)
- Conducted thorough testing to identify and resolve platform-specific bugs. Fixed known issues to improve app reliability across iOS and Android.

## Input Validation
- Enhanced input validation for date, month, and year fields by adding stricter checks and user-friendly error messages.

## Tab Indexing
- Corrected tab indexing between fields to ensure logical navigation for users across all input fields, enhancing accessibility.

## Error Handling
- Implemented comprehensive error handling mechanisms to gracefully manage unexpected errors and provide actionable feedback to users.

## Cross-Platform Compatibility
- Verified project compatibility to ensure smooth operation on both iOS and Android platforms.


## Possible actions to improve performance
- The app uses fadeIn effect animation with opacity in it. Its not the best way to build animation because opacity animation rebuilds UI every frame to slowly make item visible. But in that case it looks better with it and is not critical to remove for now.

#  Do you believe you can make a bug free app? If so, what would you need? If not, justify
- Building a completely bug-free app is unlikely, but adopting Test-Driven Development (TDD) and ensuring access to all necessary testing devices can minimize issues. TDD helps define and verify functionality early, reducing bugs during development. In past cases, limited device access led to undetected bugs, so having a range of devices for testing different OS versions and screen sizes is critical. Combined with automated tests, manual QA, and CI/CD pipelines, these steps significantly improve app reliability and polish.
