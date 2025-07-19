
# 🌈 Flutter Login & Sign Up UI (Simple Version)

This project contains a very simple Flutter UI with two screens:
- **Login Page**
- **Sign Up Page**

Both pages include colorful gradient backgrounds and basic form fields.

---

## 🚀 Features Used

### ✅ 1. `MaterialApp` (in main.dart)
Used to set up the basic app environment and route to the first screen.

```dart
MaterialApp(
  debugShowCheckedModeBanner: false,
  home: LoginPage(),
);
```

---

### ✅ 2. `StatelessWidget`
All screens are created as stateless widgets for simplicity and fast UI building.

```dart
class LoginPage extends StatelessWidget
```

---

### ✅ 3. `Scaffold`
Provides the basic structure for each screen (app layout).

```dart
Scaffold(
  body: ...
)
```

---

### ✅ 4. `Container` + `BoxDecoration` + `LinearGradient`
Used to create the **gradient background** (yellow to pink or green to pink):

```dart
Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.yellowAccent, Colors.pinkAccent],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
)
```

---

### ✅ 5. `Padding`
To add space around the screen content.

```dart
Padding(
  padding: EdgeInsets.all(24),
)
```

---

### ✅ 6. `Column` & `ListView`
To arrange widgets vertically:
- `Column` is used in LoginPage (fixed height).
- `ListView` is used in SignUpPage (scrollable content).

---

### ✅ 7. `TextField`
Used to input Username, Email, Password, etc.  
We used `filled: true` and `fillColor: Colors.white` for visibility over the gradient.

```dart
TextField(
  decoration: InputDecoration(
    hintText: "Username",
    fillColor: Colors.white,
    filled: true,
  ),
)
```

---

### ✅ 8. `ElevatedButton`
Used for login or sign up action buttons.

```dart
ElevatedButton(
  onPressed: () {},
  child: Text("Login")
)
```

---

### ✅ 9. `TextButton` + `Navigator`
Used to switch between Login and SignUp screens using Flutter's Navigator.

```dart
TextButton(
  onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUpPage()));
  },
  child: Text("Don't have an account? Sign Up"),
)
```

---

## 📁 Project Structure

```
lib/
├── main.dart         → App entry and route to LoginPage
├── login_page.dart   → UI for Login screen
└── signup_page.dart  → UI for Sign Up screen
```

---

## 📷 UI Preview (Design Inspiration)
The UI is inspired by colorful gradient-based login designs with modern form fields and minimal controls.

---

## 🧠 Summary

This project demonstrates how to:
- Build a clean UI with gradient backgrounds.
- Use basic input fields.
- Navigate between pages using Navigator.
- Keep the code very short and beginner-friendly.

---

## ✅ Next Steps (Optional ideas)
- Add form validation
- Connect to Firebase Auth
- Add social login buttons (e.g., Google, Facebook)

---

Made with ❤️ in Flutter
