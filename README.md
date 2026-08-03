# ⏱️ Flutter Stopwatch App

A simple and responsive stopwatch application built using **Flutter** and **Dart**. The application provides timer controls with millisecond-level resolution, allowing users to start, stop, record lap times, and clear data.

---

## ✨ Features

- **Millisecond Resolution**: Tracks elapsed time with a precision of 100 milliseconds using periodic timers.
- **Stopwatch Controls**:
  - **Start**: Launches the timer (resets current timer to zero).
  - **Stop**: Pauses the current timer run.
  - **Lap**: Records the split lap time to a history list and resets the active timer.
  - **Clear**: Resets the active timer and clears all recorded laps.
- **Console Log Logging**: Prints the recorded lap times list to the console on lap entry or list clearing.

---

## 🛠️ Tech Stack & Architecture

- **Framework**: [Flutter](https://flutter.dev) (Dart SDK)
- **Timer Engine**: `Timer.periodic` from `dart:async`
- **State Management**: Local Widget State (`StatefulWidget` and `setState`)

### Folder Structure

```plaintext
lib/
├── stopwatch/
│   └── stopwatch.dart   # Main stopwatch screen containing state, tick logic, and buttons
└── main.dart            # Root widget and application entry point
```

---

## 🚀 Getting Started

### Prerequisites

Ensure you have the following installed:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (v3.0.0 or higher)
- [Dart SDK](https://dart.dev/get-started)
- [Git](https://git-scm.com/)

### Installation & Execution

1. **Clone the Repository**
   ```bash
   git clone https://github.com/Prem-Agravat/stopwatch.git
   cd stopwatch
   ```

2. **Fetch Dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the Application**
   ```bash
   flutter run
   ```

---

## 🧪 Implementation Details

* **Timer Engine**: Located in [stopwatch.dart](file:///C:/Users/agrav/.gemini/antigravity-ide/scratch/stopwatch/lib/stopwatch/stopwatch.dart). Uses a recurring `Timer` that ticks every 100 milliseconds, updating the local UI state dynamically.
* **Lap Record Utility**: Records split times into an internal array (`laps`) and resets the elapsed time, letting you track multiple splits sequentially.
* **Entry Point**: [main.dart](file:///C:/Users/agrav/.gemini/antigravity-ide/scratch/stopwatch/lib/main.dart) - Configures the `MaterialApp` and runs the main stopwatch screen interface.
