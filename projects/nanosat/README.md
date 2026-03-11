# 🛰️ NanoSat-Ada: Telemetry Control System

## 📌 Project Overview
**NanoSat-Ada** is a flight software simulation for a CubeSat (nano-satellite), developed entirely in **Ada 2012**. The primary goal is to apply rigorous programming concepts and strong typing to ensure system reliability in the hostile environment of space.

The system handles data collection (altitude, battery, temperature), ground command processing, and autonomous safety management (*Safe-mode*) in the event of technical anomalies.

---

## 🛠️ Applied Ada Concepts
This project implements the core pillars covered in the first 119 pages of *Learning Ada*:

* **Strong & Scalar Typing:** Extensive use of `range` to define real physical units (Velocity, Volts, Degrees), mathematically preventing overflow and out-of-bounds errors at the language level.
* **Modularity (Packages):** Strict separation between navigation logic, power management, and the system kernel (`.ads` for interfaces, `.adb` for implementation).
* **Imperative Programming:** Robust control structures, including `case statements` for state machines and `loops` for continuous monitoring cycles.
* **Records & Arrays:** Complex data structuring for telemetry frames and sensor history logs.

---

## 🏗️ Software Architecture

The software is divided into three main modules:

### 1. Data Layer (`Satellite.Types`)
This module defines the "physics" of the satellite with strict constraints.
| Metric | Ada Type | Constraint (Range) |
| :--- | :--- | :--- |
| **Altitude** | `Float` | `0.0 .. 2_000.0` (km) |
| **Battery Level** | `Float` | `0.0 .. 100.0` (%) |
| **System State** | `Enumeration` | `Standby, Active, SafeMode` |

### 2. Logic Core (`Satellite.Core`)
Manages the state machine. For instance, if the battery drops below 15%, the system automatically triggers a transition to `SafeMode` and shuts down non-essential instruments.

### 3. Command Interface (`Satellite.Ground_Control`)
Simulates the reception of telecommands from Earth (e.g., `CHANGE_ORBIT`, `ACTIVATE_CAMERA`).

---

## 🚀 Installation & Compilation

### Prerequisites
* An Ada compiler (**GNAT** via Alire or GNAT Community Edition).
* The `alr` project manager.

### Instructions
1.  **Build the project:**
    ```bash
    alr build
    ```
2.  **Run the simulation:**
    ```bash
    alr run
    ```