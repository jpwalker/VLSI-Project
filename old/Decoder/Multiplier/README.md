# Multiplier Component
## Jean P. Walker

### Objectives:
1. Multiply chips associated from incoming message and code.
2. Return the result of multiplication on a bus.

### Ports:
1. Input: Bus from registers storing user's code and current message.
  * Each register feeding the bus stores 16 chips.
  * Each chip contains these possible values (-1, 0, 1) and requires two bits to store.
2. Output: Bus leading to register containg the result of the multiplication.
  * The multiplication is accomplished chip by chip and will produce 16 chips or 32 bits for output.

### VHDL Strategy:
1. Create an enumeration for the possible chip values.
2. Create a type which stores the bit vector representation of the chip.
3. Create an array type which stores an array of chips.
4. Create functions for simple operations done on chips. 
* These types will be found in the TypeLibrary.types package.
