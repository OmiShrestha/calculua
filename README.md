## Calculua

Calculua is a terminal-based calculator program written in Lua. It provides basic arithmetic operations along with some additional features.

## Features

  1. Addition
  2. Subtraction
  3. Multiplication
  4. Division
  5. Factorial 
  6. Square Root
  7. Power
  8. View Calculation History (saved temporarily)

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
4. View the result displayed on the terminal screen.

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

- Lua interpreter must be installed on your system.
- homebrew is recommended for a Macbook.

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

## File Structure

The project consists of the following files:

- `calculator.lua`: The main program file that provides the user interface and handles user input.
- `operations.lua`: Contains the implementation of various mathematical operations such as addition, subtraction, multiplication, division, factorial, square root, and power.
- `history.lua`: Manages the history of calculations performed during the session, allowing users to view their past calculations.

## How It Works

1. The `calculator.lua` file imports functions from `operations.lua` and `history.lua`.
2. Based on the user's menu selection, the corresponding function from `operations.lua` is called to perform the calculation.
3. The result of the calculation is displayed and stored in the history, which can be viewed using the `history.lua` module.