
# Internship Assignment - Flutter App

This project is a Flutter-based application that displays a list of products fetched from an API using the BLoC pattern. The app features multiple screens such as the **Home Screen**, **Form Screen**, and **Audio Player Screen**. The user can navigate between these screens and explore products in a list.

## Table of Contents
1. [Project Overview](#project-overview)
2. [Features](#features)
3. [Technologies Used](#technologies-used)
4. [Setup Instructions](#setup-instructions)
5. [File Structure](#file-structure)
6. [App Screens](#app-screens)
7. [Future Enhancements](#future-enhancements)

## Project Overview

This Flutter application showcases a simple app architecture using the **BLoC** pattern to manage state. It features:
- **Product List**: Displays a list of products fetched from an external API.
- **Navigation**: Allows navigation between different screens including the Home, Form, and Audio Player screens.
- **BLoC Pattern**: Used for state management to handle product fetching, loading, and error states.

## Features

- **Home Screen**:
  - Displays a list of products.
  - Navigation buttons to move to **Form Screen** and **Audio Player Screen**.
  
- **Form Screen**:
  - A placeholder screen where the user can add form fields (not fully implemented in this example).

- **Audio Player Screen**:
  - Placeholder screen for an audio player (not fully implemented in this example).

## Technologies Used

- **Flutter**: Framework for building natively compiled applications for mobile, web, and desktop from a single codebase.
- **BLoC (Business Logic Component)**: State management solution used for handling the business logic.
- **API (RESTful API)**: A simple API is used to fetch product data (via `ApiService`).
- **Material Design**: For UI components, utilizing Flutter’s built-in material design widgets.

## Setup Instructions

### Prerequisites
Ensure that you have the following installed on your system:
- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK: Included with Flutter installation.
- Android Studio or Visual Studio Code (with Flutter plugins installed).

### Clone the Repository

```bash
git clone https://github.com/Hitesh-jadhav/Internship-Assignment.git
cd Internship-Assignment
```

### Install Dependencies

Run the following command in the project directory to fetch the required dependencies:

```bash
flutter pub get
```

### Run the App

To run the app on an emulator or physical device, execute the following:

```bash
flutter run
```

### API Setup (if needed)

If you're using a custom API, ensure that the `ApiService` class is correctly configured to point to the correct API endpoint. This can be done by modifying the `ApiService` class in the `services/api_service.dart` file.

## File Structure

```plaintext
lib/
├── blocs/                # BLoC pattern files (events, states, and logic)
│   ├── product_bloc.dart
│   ├── product_event.dart
│   └── product_state.dart
├── screens/              # All screens of the application
│   ├── home_screen.dart
│   ├── form_screen.dart
│   └── audio_player_screen.dart
├── services/             # External services like API service
│   └── api_service.dart
├── widgets/              # Reusable widgets like ProductCard
│   └── product_card.dart
└── main.dart             # Main entry point of the app
```

### Key Files:

- **`main.dart`**: Contains the entry point for the app and route configurations.
- **`home_screen.dart`**: The main screen where products are listed, and navigation occurs.
- **`form_screen.dart`**: Placeholder form screen (future functionality can be added here).
- **`audio_player_screen.dart`**: Placeholder screen for the audio player.
- **`product_bloc.dart`**: BLoC logic for handling product fetching.
- **`product_event.dart`**: Defines events related to products (e.g., `FetchProducts`).
- **`product_state.dart`**: Defines states related to products (e.g., `ProductLoading`, `ProductLoaded`).

## App Screens

### **Home Screen**
- Displays a list of products.
- Contains buttons to navigate to the **Form Screen** and **Audio Player Screen**.

### **Form Screen**
- Placeholder for a form where users can input data.
- Will be expanded with form fields and submission logic.

### **Audio Player Screen**
- Placeholder for an audio player UI.
- Future development can integrate audio controls here.

## Future Enhancements

- **Form Screen**: Add real form fields and logic for submission (e.g., sending form data to an API).
- **Audio Player**: Integrate a fully functional audio player with playback controls.
- **Product API**: Replace mock data with a real API to fetch product information.
- **Error Handling**: Improve error handling in case of API failures.
- **State Management**: Implement more sophisticated state management techniques as the app grows (e.g., handling complex states or introducing multiple BLoCs).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
