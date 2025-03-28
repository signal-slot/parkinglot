# Parking Lot UI

A multi-platform parking lot management system with implementations for various frameworks and devices.

## Project Overview

This project provides parking lot management user interfaces implemented across multiple platforms and frameworks. It includes implementations for mobile (Flutter), desktop (Qt), and embedded systems (Raspberry Pi Pico with Slint UI).

All UI implementations were generated from a single PSD file (`コインパーキングUI.psd`) using the export tool included in the [qtpsd](https://github.com/signal-slot/qtpsd) repository.

The application simulates a parking lot management system with features like:
- Parking slot selection
- Payment processing
- Support for various payment methods (credit cards, IC cards like Suica, PASMO, etc.)

## Implementations

### Flutter

A cross-platform mobile implementation using the Flutter framework.

#### Setup and Run

```bash
cd flutter
flutter pub get
flutter run
```

### Qt

A desktop implementation using Qt QML.

#### Files
- `qt/main.qml` - Main QML file
- `qt/ui/MainWindow.ui.qml` - Main window UI definition

### Qt-nogpu

A version of the Qt implementation that doesn't require GPU acceleration.

#### Files
- `qt-nogpu/main.qml` - Main QML file
- `qt-nogpu/MainWindow.ui.qml` - Main window UI definition

### Slint

A UI implementation using the Slint UI framework.

#### Files
- `slint/main.slint` - Main Slint UI file
- `slint/MainWindow.slint` - Main window UI definition

### Pico

An embedded implementation for Raspberry Pi Pico microcontroller using Rust and Slint.

#### Files
- `pico/src/main.rs` - Main Rust code
- `pico/ui/main.slint` - Slint UI for Pico
- `pico/ui/MainWindow.slint` - Main window UI definition

#### Build and Run

```bash
cd pico
cargo build --release
```

### Pico2

An alternative implementation for Raspberry Pi Pico with additional features.

#### Files
- `pico2/src/main.rs` - Main Rust code
- `pico2/src/picores28.rs` - Pico-specific code
- `pico2/ui/main.slint` - Slint UI for Pico2
- `pico2/ui/MainWindow.slint` - Main window UI definition

#### Build and Run

```bash
cd pico2
cargo build --release
```

## Assets

The project includes various assets:
- Payment method icons (Suica, PASMO, ICOCA, etc.)
- UI elements and graphics
- Custom fonts

## Requirements

### Flutter
- Flutter SDK
- Dart

### Qt/Qt-nogpu
- Qt framework

### Slint
- Slint UI toolkit

### Pico/Pico2
- Rust
- Cargo
- Embedded development tools for Raspberry Pi Pico

## Project Status

This project is currently under development. Different implementations may have varying levels of completeness and feature parity.

## License

TBD
