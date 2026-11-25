# Nand2Tetris Capstone

Base project: [sanchita6-debug/nand2tetris_capstone](https://github.com/sanchita6-debug/nand2tetris_capstone). Part A and Part B are based on that repository; Part C is adjusted here for the roll number below.

Roll number: `2501739418`  
K: `18` (the last two digits of the roll number)

## Project parts

- **Part A:** Project 5 Hack computer. The `CPU.hdl`, `Memory.hdl`, and `Computer.hdl` files are included.
- **Part B:** Python assembler for Hack assembly language. It reports invalid instructions with their line numbers.
- **Part C:** `Box.asm` draws a box while a key is held and clears it after release. Its inner loop writes the three words in each row, then skips the remaining 29 words to reach the next row.

For K=18, the box starts at row 18, is 20 rows tall, and is 48 pixels wide: `16 × ((18 mod 4) + 1)`. The original example used K=25 and was 32 pixels wide.

## Run Part B and Part C

```powershell
python assembler.py Box.asm
python verify_box.py Box.hack 18
```

The first command creates `Box.hack`. The second checks the box pixels for key press and release. To try it in the CPU Emulator, load `Box.hack` and hold a key while the program is running.

The screenshots in `screenshots/` are from the original K=25 example; they have not been changed to represent this K=18 version.
