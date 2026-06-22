# 🔍 Sequence Detector (1011) using Verilog HDL

## 📌 Project Overview

This project implements a **Sequence Detector** using **Verilog HDL** and **Finite State Machine (FSM)** concepts.

The detector continuously monitors a serial input stream and generates an output (`out = 1`) whenever the target sequence **1011** is detected.

This implementation supports **overlapping sequence detection**.

---

## 🎯 Objective

* Design a sequence detector using Verilog HDL
* Understand FSM (Finite State Machine) design
* Detect a predefined bit sequence (`1011`)
* Simulate and verify functionality in Vivado

---

## 🏗️ Design Specifications

| Parameter | Value         |
| --------- | ------------- |
| Language  | Verilog HDL   |
| FSM Type  | Mealy Machine |
| Sequence  | 1011          |
| Detection | Overlapping   |
| Tool      | Vivado        |

---

## 📂 Project Structure

```text
sequence_detector/
│
├── sequence_detector.v
├── tb_sequence_detector.v
├── simulation.png
├── README.md
└── docs/
```

---

## ⚙️ Inputs and Outputs

### Inputs

| Signal | Width | Description         |
| ------ | ----- | ------------------- |
| clk    | 1     | System Clock        |
| rst    | 1     | Active High Reset   |
| in     | 1     | Serial Input Stream |

### Outputs

| Signal | Width | Description              |
| ------ | ----- | ------------------------ |
| out    | 1     | Sequence Detected Output |

---

## 🔄 Working Principle

Target Sequence:

```text
1011
```

Example Input:

```text
1101011011
```

Output:

```text
0000001001
```

Whenever `1011` appears in the incoming serial data, output becomes HIGH.

---

## 🧠 FSM State Description

| State | Meaning       |
| ----- | ------------- |
| S0    | Initial State |
| S1    | Detected 1    |
| S2    | Detected 10   |
| S3    | Detected 101  |

Detection occurs when:

```text
S3 + Input(1)
→ Sequence Found
→ out = 1
```

---

## ▶️ Simulation Steps (Vivado)

### Step 1

Create a New Project

### Step 2

Add Source Files:

* sequence_detector.v
* tb_sequence_detector.v

### Step 3

Run:

```text
Run Behavioral Simulation
```

### Step 4

Observe:

* clk
* in
* state
* out

---

## 🧪 Test Cases

| Input Sequence | Output |
| -------------- | ------ |
| 1011           | 1      |
| 1001           | 0      |
| 1101011        | 1      |

---

## 📷 Simulation Result

Add waveform screenshot:

```md
![Simulation](simulation.png)
```

---

## 🔧 Concepts Used

* Verilog HDL
* FSM Design
* Mealy Machine
* Sequential Logic
* Combinational Logic

---

## 🚀 Future Improvements

* Non-overlapping detection
* Configurable sequence input
* Multiple sequence detection
* FPGA implementation

---

## 👩‍💻 Author

Mandavilli Lakshmi Tejasvini
B.Tech – ECE (VLSI)
VIT-AP University

GitHub: Add your profile link

---

⭐ If you found this project useful, give this repository a star.
