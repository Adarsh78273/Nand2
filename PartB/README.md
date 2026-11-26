# Part B - Python Assembler

`assembler.py` translates Hack assembly instructions into 16-bit `.hack` instructions. It reads labels in a first pass, then translates instructions and reports invalid lines.

Run it from this folder:

```powershell
python assembler.py Test/Add.asm
python assembler.py Test/Max.asm
```

The output is written beside each input file, for example `Test/Add.hack`. `Test/` also contains `Rect.asm`, `Pong.asm`, and `bad.asm` for trying more inputs and error handling.
