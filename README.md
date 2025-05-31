# Stroll Bonfire UI Task

A modern Flutter application implementing a social interaction UI design, featuring a clean and intuitive interface for user engagement.

## Features

- 🎨 Modern and clean UI design
- 🌙 Dark theme with custom color scheme
- 💬 Interactive option selection interface
- 👥 User profile display
- ⏱️ Timer and participant count display
- 🎯 Bottom navigation with badge notifications
- 🎭 Custom gradients and visual effects
- 📱 Responsive layout

## Screenshots

[Add screenshots of your app here]

## Getting Started

### Prerequisites

- Flutter SDK (^3.5.4)
- Dart SDK (latest version)
- Android Studio / VS Code with Flutter extensions
- Git

### Installation

1. Clone the repository:
```bash
git clone [your-repository-url]
cd stroll_task1
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── core/
│   └── theme.dart           # App theme and color definitions
├── features/
│   └── bonfire/
│       ├── bonfire_screen.dart
│       └── widgets/
│           ├── bottom_nav_bar.dart
│           ├── gradients.dart
│           └── option_button.dart
└── main.dart
```

## Dependencies

- `flutter_svg: ^2.1.0` - For SVG asset rendering
- `badges: ^3.1.2` - For notification badges
- `cupertino_icons: ^1.0.8` - For iOS-style icons

## Theme System

The app uses a centralized theme system defined in `lib/core/theme.dart` with:

- Custom color palette
- Dark theme configuration
- Consistent text styles
- Reusable color constants

## Assets

- **Images**: Located in `assets/images/`
- **Icons**: Located in `assets/icons/`
- **Fonts**: Proxima Nova font family with multiple weights

