# BASF

A Flutter-based dashboard application with a customizable bottom navigation bar, drawer, and various screens, including Home, Self-Service Portal, Performance Analytics, Notifications, and Settings.

## Features

- **Home Screen**: Display key information.
- **Self-Service Portal**: Provides essential self-service functionalities.
- **Performance Analytics**: Visualize performance metrics.
- **Notifications**: Stay updated with notifications.
- **Settings**: Customize your preferences.

## Screenshots

<img src="https://github.com/user-attachments/assets/32c41054-5c67-47e0-8c63-ea139275491b" alt="Home Screen" width="400" height="600" />  

<img src="https://github.com/user-attachments/assets/f93b31cf-fc96-4460-acf6-aaed3fd4eb48" alt="Self-Service Screen" width="400" height="600" />  

<img src="https://github.com/user-attachments/assets/624c77b5-555b-4822-937d-a816574e1007" alt="Performance Analytics Screen" width="400" height="600" />    

<img src="https://github.com/user-attachments/assets/7efd5454-6ba6-46ed-a3ac-c62a9886cd8b" alt="Notifications Screen" width="600" height="600" />  

## Getting Started

Follow these steps to run the app on your local machine.

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) (2.0 or later)
- Android Studio or Visual Studio Code
- Dart SDK

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/your-repo-name.git
   ```

2. Navigate to the project directory:

   ```bash
   cd your-repo-name
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Run the app:

   ```bash
   flutter run
   ```

## Build APK

To build the APK:

```bash
flutter build apk
```

The APK will be located at:

```
/build/app/outputs/flutter-apk/app-release.apk
```

## Project Structure

```plaintext
lib/
├── main.dart                 # Entry point of the app
├── screens/                 # All screen files
│   ├── dashboard_screen.dart
│   ├── home_screen.dart
│   ├── self_service_screen.dart
├── assets/                  # Images and other assets
│   ├── self.png
│   ├── performance.png
│   ├── good.png
│   ├── notification.png
│   ├── settings.png
```

## Customization

- To update the bottom navigation bar labels and icons, modify the `BottomNavigationBar` items in `dashboard_screen.dart`.
- Update assets and images in the `assets/` directory.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more information.

---

### Created With ❤️ Using Flutter

