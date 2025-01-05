# Assembly Integer Overflow Bug

This repository demonstrates a common error in assembly programming: integer overflow during memory address calculation.  The code attempts to access memory using a calculation that may exceed the maximum addressable memory. This can lead to unpredictable program behavior or crashes.

The `bug.asm` file contains the problematic code. The `bugSolution.asm` file presents a solution using appropriate checks to prevent the overflow.

## Bug Description:
The `mov eax, [ebx + ecx*4 + 0x10]` instruction calculates a memory address by adding registers and a constant offset. If the result of this calculation exceeds the maximum memory address, the program will experience an error. 

## Solution:
The solution involves adding checks to ensure the calculated address remains within the bounds of allocated memory. This involves range checks and potential error handling if the memory address is outside the limits. 