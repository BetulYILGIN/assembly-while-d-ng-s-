# Assembly Program: Comparison and Increment Workflow

This project is a simple assembly program designed to demonstrate comparison operations, conditional branching, and arithmetic instructions. It processes and evaluates registers iteratively based on defined conditions.

---

## Features

- **Comparison Logic:** Uses `cmp` to compare register values and makes decisions with conditional jumps.
- **Arithmetic Operations:** Increments register values and performs additions.
- **Branching:** Implements control flow using labels and jump instructions.
- **Simple Workflow:** Processes predefined register values in an easy-to-follow structure.

---

## Code Structure

```asm
mov ax,5         ; Initialize AX with 5
mov bx,10        ; Initialize BX with 10
mov cx,4         ; Initialize CX with 4
mov dx,3         ; Initialize DX with 3
mov ah,0         ; Initialize AH (accumulator for results) to 0

basla:           ; Start of the main routine
cmp ax,bx        ; Compare AX with BX
jle ana          ; Jump to 'ana' if AX <= BX
;jmp bitir       ; Uncomment this if needed to terminate early

ana:
cmp ax,cx        ; Compare AX with CX
jg yap1          ; Jump to 'yap1' if AX > CX
cmp bx,dx        ; Compare BX with DX
jg yap1          ; Jump to 'yap1' if BX > DX
jmp yap2         ; Jump to 'yap2' if neither condition is met

yap1:
add ah,10        ; Add 10 to AH if conditions in 'yap1' are met
jmp yap2         ; Continue to 'yap2'

yap2:
inc ax           ; Increment AX by 1
end              ; End of the program
```

---

## Workflow

1. **Initialization:**
   - Registers `AX`, `BX`, `CX`, and `DX` are initialized with specific values.
   - `AH` is set to 0 as the accumulator for results.

2. **Comparison and Branching:**
   - Compares `AX` and `BX`. If `AX <= BX`, control flows to the `ana` section.
   - Further comparisons determine whether to proceed to `yap1` or skip to `yap2`.

3. **Arithmetic Operation:**
   - If conditions are met in `yap1`, 10 is added to the `AH` register.

4. **Increment and End:**
   - Increments the `AX` register by 1 and ends the program.

---

## Key Instructions

- `mov`: Moves data into a register.
- `cmp`: Compares two values.
- `jle`: Jumps if the first value is less than or equal to the second.
- `jg`: Jumps if the first value is greater.
- `jmp`: Unconditionally jumps to a specified label.
- `add`: Adds a value to a register.
- `inc`: Increments a register by 1.
- `end`: Marks the end of the program.

---

## How to Run the Program

1. Use an x86 assembly emulator or development environment such as:
   - **DOSBox** with MASM or TASM
   - **EMU8086**
   - **NASM** (with appropriate syntax adjustments)

2. Assemble the program using your chosen assembler.

3. Run the assembled binary and observe the outputs.

---

## Example Execution

- **Initial Values:**
  - AX = 5, BX = 10, CX = 4, DX = 3, AH = 0

- **Process Flow:**
  - AX is incremented, conditions are evaluated, and AH accumulates 10 if specific conditions are met.

- **Final State:**
  - AX > BX, or AX > CX, or BX > DX can trigger operations in `yap1`.


