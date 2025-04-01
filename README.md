# x86 Assembly Exercises Collection (Chapter 8)

This project is a complete set of educational exercises written in **x86 Assembly (MASM-style)**, aimed at practicing and demonstrating fundamental low-level programming techniques. The code is designed for small memory model (real-mode 16-bit) and intended to be assembled and run in DOS or DOSBox environments.

Each procedure (`ex1` to `ex14c`) corresponds to a focused exercise, solving a different problem related to memory, strings, numbers, binary/hexadecimal representation, or data movement.

### Program Structure

- All data is defined in the `.DATASEG` section, with relevant buffers, strings, and working arrays.
- Code is modular and organized under clearly labeled procedures (`ex1`, `ex2`, etc.).
- `start:` is the program's entry point and can selectively call the desired exercise.

### Key Techniques Covered

- String and character manipulation using direct memory access.
- Array traversal and filtering (e.g., filtering based on divisibility or value).
- Conversion between binary, decimal, and hexadecimal representations.
- Stack operations and register management (`push`, `pop`, `div`, `mul`, `int 21h`).
- Conditional logic and loops using low-level flow control.
- Manual implementation of common routines such as decimal display (`ShowAxDecimal`), byte printing, and string processing.
- Use of segment registers (`DS`, `AX`) and pointer addressing.

### Educational Value

This project serves as a practical introduction to:

- **x86 Assembly syntax** and instruction flow.
- **Manual memory management** and data access.
- **Low-level I/O operations** using BIOS/INT21h interrupts.
- **Modular design in Assembly**, improving readability and reuse.
- **Binary thinking** – such as bitwise operations, flags, and logical gates.

It provides excellent hands-on experience for students learning computer architecture, systems programming, or embedded development.

### Example Exercises

- `ex1` – Fill array with letters `'a'` to `'m'`
- `ex5` – Copy a buffer of bytes
- `ex8` – Sum values greater than 100 in a list
- `ex10` – Convert a byte to binary and print as ASCII
- `ex14c` – Convert a 16-bit word to a 4-character hexadecimal string

---

The project is ideal for students practicing x86 assembly and for showcasing a broad understanding of fundamental system-level logic.
