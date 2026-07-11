# Half Adder (Bộ cộng bán phần)

## 1. Specification (Đặc tả chức năng)
**Truth Table (Bảng chân trị):**

| Input a | Input b | Sum (Tổng) | Cout (Nhớ) |
|:-------:|:-------:|:----------:|:----------:|
|    0    |    0    |     0      |     0      |
|    0    |    1    |     1      |     0      |
|    1    |    0    |     1      |     0      |
|    1    |    1    |     0      |     1      |

## 2. Logic Equations (Phương trình Logic)
Dựa vào bảng chân trị, ta có phương trình logic:
* **Sum**  = $a \oplus b$  (Cổng XOR)
* **Cout** = $a \cdot b$    (Cổng AND)

## 3. Schematic (Sơ đồ mạch)
![Half Adder Schematic](docs/schematic.png)

## 4. Simulation Waveform (Dạng sóng mô phỏng)
![Half Adder Waveform](docs/waveform.png)
