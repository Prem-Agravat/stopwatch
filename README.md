⏱️ Flutter Stopwatch App

A simple and responsive stopwatch application built with Flutter and Dart. It provides easy-to-use controls for tracking elapsed time, recording lap times, pausing the stopwatch, and resetting recorded data.

---

✨ Features

- Precise Time Tracking: Displays elapsed time with millisecond formatting and updates every 100 milliseconds.
- Start: Starts or resumes the stopwatch.
- Pause: Temporarily stops the stopwatch while preserving the current elapsed time.
- Lap Recording: Records the current elapsed time and stores it in a lap history.
- Reset: Resets the stopwatch and clears all recorded laps.
- Lap History: Displays previously recorded lap times for easy comparison.
- Responsive UI: Clean and simple interface designed with Flutter widgets.
- Console Logging: Logs lap data to the console when laps are recorded or cleared.

---

🛠️ Tech Stack

- Framework: Flutter
- Language: Dart
- Timer: "Timer.periodic" from "dart:async"
- State Management: "StatefulWidget" and "setState()"

---

📁 Project Structure

lib/
├── stopwatch/
│   └── stopwatch.dart    # Stopwatch UI, timer logic, and controls
└── main.dart             # Application entry point

---

🚀 Getting Started

Prerequisites

Make sure you have the following installed:

- "Flutter SDK" (https://flutter.dev)
- "Dart SDK" (https://dart.dev)
- "Git" (https://git-scm.com/)

Installation

1. Clone the repository

git clone https://github.com/Prem-Agravat/stopwatch.git
cd stopwatch

2. Install dependencies

flutter pub get

3. Run the application

flutter run

---

⚙️ How It Works

The stopwatch uses Dart's "Timer.periodic" to update the elapsed time at regular 100-millisecond intervals. The current timer value is stored in the widget's state and the UI is refreshed using "setState()".

Lap Recording

When the user records a lap, the current elapsed time is added to the lap history. The stopwatch can then continue tracking the next interval.

Stopwatch Controls

The application provides controls to:

- Start or resume timing
- Pause the current timer
- Record lap times
- Reset the stopwatch and lap history

---

📱 Future Improvements

- Add dark/light theme support
- Add lap deletion functionality
- Improve time accuracy using "Stopwatch"
- Add animations and enhanced UI
- Add persistent lap history
- Add countdown timer functionality

---

📄 License

This project is created for learning and development purposes.
