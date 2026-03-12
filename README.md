# E-Commerce Simple App

A Flutter e-commerce UI app featuring a complete authentication flow — splash screen, sign in, registration, forgot password, reset password, and a home screen. Built with reusable widget components and custom local image assets.

---

## Features

-  **Splash Screen** — branded intro with 3-second auto-navigation
-  **Sign In Screen** — email & password login with form layout
-  **Register Screen** — full registration form with Terms & Conditions checkbox
-  **Forgot Password** — email-based password reset request flow
-  **Reset Password** — new password + confirm password screen
-  **Login Again** — post-reset login confirmation screen
-  **Home Screen** — base screen ready for product catalog expansion
-  **Reusable Widget Components** — shared text, text field, and button widgets

---

## Tech Stack

| Technology | Usage |
|---|---|
| Flutter | UI Framework |
| Dart | Programming Language |
| `gap` | Clean spacing between widgets |
| `imagebutton` | Image-based interactive buttons |
| Custom local assets | Screen illustrations & branding |

---

## Project Structure

```
lib/
├── main.dart                          # App entry point → SplashScreen
├── assets/                            # Local image assets
│   ├── splashScreen.png
│   ├── Sin_In_Screen.png
│   ├── retailer_create_account.png
│   ├── Forgot password.png
│   └── loginAgain.png
└── screens/
    ├── screens.dart                   # Barrel export
    ├── home_screens/
    │   └── home_screen.dart           # Home (ready for product expansion)
    └── loginscreens/
        ├── splachscreen.dart          # Splash screen (3s timer → Sign In)
        ├── sin_in_screen.dart         # Sign In screen
        ├── retailer_create_account.dart  # Register screen
        ├── forget_password.dart       # Forgot Password screen
        ├── reset_password.dart        # Reset Password screen
        ├── login_again.dart           # Post-reset login screen
        ├── class_for_text.dart        # Reusable text widget
        ├── class_for_textfields.dart  # Reusable text field widget
        └── class_for_bottons.dart     # Reusable button widget
```

---

## App Navigation Flow

```
Splash Screen (3s)
       ↓
   Sign In ──────────────→ Home Screen
       │
       ├──→ Register → Sign In
       │
       └──→ Forgot Password
                  ↓
            Reset Password
                  ↓
            Login Again → Sign In
```

---

## Getting Started

### Prerequisites

- Flutter SDK `>=3.8.1`
- Dart SDK `>=3.0.0`
- Android Studio / VS Code with Flutter extension

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/maazkhan-tech/ecommerce-simple-app.git
   cd ecommerce-simple-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

---

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  gap: ^3.0.1
  imagebutton: ^1.0.0
  cupertino_icons: ^1.0.8
```

---

## Reusable Components

| Widget | File | Description |
|---|---|---|
| `ClassForText` | `class_for_text.dart` | Styled label text used across all screens |
| `ClassForTextfields` | `class_for_textfields.dart` | Outlined text input with optional trailing icon |
| `ClassForBottons` | `class_for_bottons.dart` | Full-width red elevated button with snackbar |

---

## Design Highlights

- **Primary color:** Red (`Colors.red` / `Color.fromARGB(247, 216, 19, 19)`)
- **Layout:** `SingleChildScrollView` for keyboard-safe scrollable screens
- **Assets:** Custom PNG illustrations per screen for a polished UI
- **Platforms supported:** Android, iOS, Web, Windows, macOS, Linux

---

## What I Learned

- Building multi-screen Flutter apps with `Navigator.push` / `Navigator.pop`
- Creating reusable widget classes to reduce code duplication
- Working with local image assets in `pubspec.yaml`
- Designing complete authentication UI flows
- Using `Timer` for splash screen auto-navigation
- `SingleChildScrollView` to prevent overflow on smaller screens

---

## Roadmap / Future Improvements

- [ ] Connect to a real backend (Firebase / REST API)
- [ ] Add form validation with error messages
- [ ] Implement actual authentication logic
- [ ] Build out the product catalog on the Home Screen
- [ ] Add shopping cart and checkout screens
- [ ] Integrate state management (Provider / Riverpod)

---

## Contributing

Contributions, issues, and feature requests are welcome!
Feel free to open an [issue](https://github.com/maazkhan-tech/ecommerce-simple-app/issues) or submit a pull request.

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

## 👨‍💻 Author

**Your Name**
- GitHub: [@maazkhan-tech](https://github.com/maazkhan-tech)
- LinkedIn: [Click](https://linkedin.com/in/maaz-khan-5385bb386)
