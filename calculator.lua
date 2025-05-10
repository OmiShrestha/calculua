-- Author: Omi Shrestha
-- Calculua: A Terminal Calculator

-- Imports functions from operations.lua & history.lua
local operations = require("operations")
local history = require("history")

-- Uses the imported functions
local addition = operations.addition
local subtraction = operations.subtraction
local multiplication = operations.multiplication
local division = operations.division
local factorial = operations.factorial
local square_root = operations.square_root
local power = operations.power

-- Uses the imported history functions
local display_history = history.display_history

-- Main program loop
while true do
    print("\n")
    print(" *********************")
    print(" *      CALCULUA     *")
    print(" *********************")
    print("1. Addition")
    print("2. Subtraction")
    print("3. Multiplication")
    print("4. Division")
    print("5. Factorial")
    print("6. Square Root")
    print("7. Power")
    print("8. View History")
    print("9. Exit")

    io.write("Choose an option (1-9): ") -- allows user to choose an input a number
    local choice = tonumber(io.read())

    if choice == 9 then
        print("Exiting the calculator.")
        break
    elseif choice == 8 then
        display_history()
    elseif choice == 5 then
        io.write("Enter a number to calculate its factorial: ")
        local num = tonumber(io.read())
        local result = factorial(num)
        print("Result: " .. result)
        table.insert(history.history, "Factorial of " .. num .. " = " .. result)
    elseif choice == 6 then
        io.write("Enter a number to calculate its square root: ")
        local num = tonumber(io.read())
        local result = square_root(num)
        print("Result: " .. result)
        table.insert(history.history, "Square root of " .. num .. " = " .. result)
    elseif choice == 7 then
        io.write("Enter the base number: ")
        local base = tonumber(io.read())
        io.write("Enter the exponent: ")
        local exponent = tonumber(io.read())
        local result = power(base, exponent)
        print("Result: " .. result)
        table.insert(history.history, base .. " ^ " .. exponent .. " = " .. result)
    else
        io.write("Enter the first number: ")
        local num1 = tonumber(io.read())

        io.write("Enter the second number: ")
        local num2 = tonumber(io.read())

        if choice == 1 then
            local result = addition(num1, num2)
            print("Result: " .. result)
            table.insert(history.history, num1 .. " + " .. num2 .. " = " .. result)
        elseif choice == 2 then
            local result = subtraction(num1, num2)
            print("Result: " .. result)
            table.insert(history.history, num1 .. " - " .. num2 .. " = " .. result)
        elseif choice == 3 then
            local result = multiplication(num1, num2)
            print("Result: " .. result)
            table.insert(history.history, num1 .. " * " .. num2 .. " = " .. result)
        elseif choice == 4 then
            local result = division(num1, num2)
            print("Result: " .. result)
            table.insert(history.history, num1 .. " / " .. num2 .. " = " .. result)
        else
            print("Invalid choice. Please try again.")
        end
    end
end