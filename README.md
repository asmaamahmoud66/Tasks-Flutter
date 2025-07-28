
# Sign Up Screen With Bloc

This project demonstrates a simple **Sign Up Screen** in Flutter using the **Bloc Pattern**.  
It includes form validation, state management using Bloc, and shows how to display a toast message.

## 📁 Project Structure

```bash
lib/
├── features/
│   └── signup/
│       ├── bloc/
│       │   ├── signup_bloc.dart
│       │   ├── signup_event.dart
│       │   └── signup_state.dart
│       └── signup_screen_with_bloc.dart
├── utils/
│   └── form_validator.dart
└── nav_feature/
    └── nav_examples.dart
```

## 🧠 Used Concepts

- **Flutter Bloc** for state management
- **Form validation** using a custom utility: `FormValidator`
- **FlutterToast** for user feedback on success or error

## ✅ Features

- Validate Name, Email, and Password fields
- Show errors on incorrect input
- Display success toast when valid
- Handle various Bloc states like:
  - `SignUpInitial`
  - `SignUpLoading`
  - `SignUpSuccess`
  - `SignUpValidationError`

## 🎥 Demo Video

[▶️ Watch the demo video](assets/vid.mp4)
