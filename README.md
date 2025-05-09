## Calculua

Calculua is a simple terminal-based calculator program written in Lua. It provides basic arithmetic operations along with some additional features.

## Features

- Addition
- Subtraction
- Multiplication
- Division
- Factorial 
- Square Root
- Power
- View Calculation History (saved temporarily in `history.txt`)

## How to Use

1. Run the program in a Lua environment.
2. Follow the on-screen menu to select an operation:
   - Enter `1` for Addition
   - Enter `2` for Subtraction
   - Enter `3` for Multiplication
   - Enter `4` for Division
   - Enter `5` for Factorial 
   - Enter `6` for Square Root 
   - Enter `7` for Power
   - Enter `8` to View Calculation History
   - Enter `9` to Exit
3. Input the required numbers as prompted.
4. View the result displayed on the terminal.

## Example

```
 ***** CALCULUA ******
1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Factorial
6. Square Root
7. Power
8. View Calculation History
9. Exit

Choose an option (1-9): 6
Enter a number to calculate its square root: 16
Result: 4.0
```

## Requirements

- Lua interpreter installed on your system.

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/OmiShrestha/calculua.git
   ```
2. Navigate to the project directory:
   ```bash
   cd calculua
   ```
3. Run the program:
   ```bash
   lua calculator.lua
   ```

## Notes

- The calculation history is saved temporarily in a file named `history.txt` located in the same directory as the script. The history persists across sessions as long as the file is not deleted.