# Flutter ShowcaseBar

A lightweight Flutter package to create **feature highlights and onboarding walkthroughs** in your app.

`flutter_showcasebar` helps you guide users through important UI elements by displaying a **dark overlay with tooltips** explaining each feature.

---

## ✨ Features

* Highlight important widgets
* Dark background overlay
* Tooltip with title and description
* Next and Skip buttons
* Multi-step walkthrough support
* Lightweight and easy to use
* Simple integration

---
## 🎥 Demo Video

[Watch Demo](https://github.com/jaypanchal1014/showcasebar/blob/stage/1000019582.mp4)


## 📦 Installation

Add the dependency in your `pubspec.yaml`.

```yaml
dependencies:
  flutter_showcasebar:
    git:
      url: https://github.com/jaypanchal1014/flutter_showcasebar.git
```

Then run:

```
flutter pub get
```

---

## 📁 Folder Structure

```
flutter_showcasebar/
│
├── lib/
│   ├── flutter_showcasebar.dart
│   │
│   └── src/
│       ├── controller.dart
│       ├── model.dart
│       ├── overlay.dart
│       └── widget.dart
│
├── example/
│   └── lib/
│       └── main.dart
│
├── pubspec.yaml
└── README.md
```

---

## 🚀 Usage

Import the package:

```dart
import 'package:flutter_showcasebar/flutter_showcasebar.dart';
```

---

## 🧩 Basic Example

### 1️⃣ Create Controller and Key

```dart
final ShowcaseController controller = ShowcaseController();
final GlobalKey buttonKey = GlobalKey();
```

---

### 2️⃣ Wrap Your Screen with Showcase

```dart
@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Showcase(
      controller: controller,
      child: HomeScreen(
        controller: controller,
        buttonKey: buttonKey,
      ),
    ),
  );
}
```

---

### 3️⃣ Start Showcase

```dart
@override
void initState() {
  super.initState();

  WidgetsBinding.instance.addPostFrameCallback((_) {
    widget.controller.start([
      ShowcaseStep(
        key: widget.buttonKey,
        title: "Add Item",
        description: "Tap here to add a new item",
      ),
    ]);
  });
}
```

---

### 4️⃣ Attach Key to Widget

```dart
FloatingActionButton(
  key: buttonKey,
  onPressed: () {},
  child: Icon(Icons.add),
)
```

---

## 📱 How it Works

When the showcase starts:

1. The screen becomes dark with an overlay.
2. A tooltip appears explaining the highlighted feature.
3. Users can tap **Next** to continue or **Skip** to close the walkthrough.

---

## 📄 License

This project is licensed under the **MIT License**.
