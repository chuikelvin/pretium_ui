# Pretium UI - Flutter Project

This is a Flutter-based mobile application that replicates the authentication flow, including the splash screen, login, registration pages, and the landing page interface (mockups only, no backend integration).

## Prerequisites

Before running the project, ensure you have the following installed on your system:

- [Flutter](https://flutter.dev/docs/get-started/install) (version 3.29.3 or higher)
- [Dart](https://dart.dev/get-dart) (comes with Flutter)
- A code editor such as [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)
- An Android/iOS emulator or a physical device for testing

## Getting Started

### 1. Clone the Repository

Clone this repository to your local machine using the following command:

```bash
git clone https://github.com/chuikelvin/pretium_ui.git 
 ```
 
### 2. Install Dependencies
Navigate to the project directory and install the necessary dependencies:

```bash
cd pretium_ui
flutter pub get
```

This command will fetch all the required packages for the project.

### 3. Set Up an Emulator/Device

If you're using an Android/iOS emulator, make sure it's running, or if you're using a physical device, ensure it's connected and detected by Flutter:

```bash
flutter devices
```

### 4. Run the Application
To run the app on an emulator or a connected device, use the following command:

```bash
flutter run
```

This will build the app and launch it on the selected device or emulator.

### 5. Debugging
If you encounter any issues during the setup or running the app, use Flutter’s debugging tools. You can check for issues in the terminal output or use the flutter doctor command to ensure everything is set up correctly:
```bash
flutter doctor
```

### 6. Hot Reload/Restart

While developing, Flutter allows you to quickly make changes and see them reflected in the app with hot reload:

- **Hot Reload**: Press `r` in the terminal or use the hot reload button in your editor.
- **Hot Restart**: Press `R` in the terminal for a complete app restart.

---

## Folder Structure

- **lib/**: Contains the main Flutter application code.
  - **core/**:  folder contains essential files and configurations for the app’s foundational setup. e.g theme 
  - **features/**: folder includes the main screens and pages of the app.
  - **shared/**: folder contains reusable UI components, widgets, and other elements that are used throughout the app.
- **assets/**: Contains images, icons, and other assets used in the app.
- **pubspec.yaml**: Flutter project configuration file, including dependencies and assets.

---

## Contributing

If you'd like to contribute to this project, feel free to fork the repository, make changes, and create a pull request. Please ensure your changes follow the existing code style.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.