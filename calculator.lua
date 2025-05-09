-- Calculua: A Terminal Calculator

-- Function for addition
local function addition(a, b)
    return a + b
end

-- Function for subtraction
local function subtraction(a, b)
    return a - b
end

-- Function for multiplication
local function multiplication(a, b)
    return a * b
end

-- Function for division
local function division(a, b)
    if b == 0 then
        return "Error: Division by zero"
    else
        return a / b
    end
end

-- Function for factorial
local function factorial(n)
    if n < 0 then
        return "Error: Factorial of a negative number is undefined"
    elseif n == 0 or n == 1 then
        return 1
    else
        local result = 1
        for i = 2, n do
            result = result * i
        end
        return result
    end
end

-- Function for square root
local function square_root(n)
    if n < 0 then
        return "Error: Square root of a negative number is undefined"
    else
        return math.sqrt(n) -- math library that provides the square root function
    end
end

-- Function for power
local function power(base, exponent)
    return math.pow(base, exponent) -- math library that provides the power function
end

-- Table to store calculation history
local history = {}

-- Function to display history
local function display_history()
    if #history == 0 then
        print("No calculations performed yet.")
    else
        print("\nCalculation History:")
        for i, entry in ipairs(history) do
            print(i .. ". " .. entry)
        end
    end
end

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
        print("Result: ", result)
        table.insert(history, "Factorial of " .. num .. " = " .. result)
    elseif choice == 6 then
        io.write("Enter a number to calculate its square root: ")
        local num = tonumber(io.read())
        local result = square_root(num)
        print("Result: ", result)
        table.insert(history, "Square root of " .. num .. " = " .. result)
    elseif choice == 7 then
        io.write("Enter the base number: ")
        local base = tonumber(io.read())
        io.write("Enter the exponent: ")
        local exponent = tonumber(io.read())
        local result = power(base, exponent)
        print("Result: ", result)
        table.insert(history, base .. " ^ " .. exponent .. " = " .. result)
    else
        io.write("Enter the first number: ")
        local num1 = tonumber(io.read())

        io.write("Enter the second number: ")
        local num2 = tonumber(io.read())

        if choice == 1 then
            local result = addition(num1, num2)
            print("Result: ", result)
            table.insert(history, num1 .. " + " .. num2 .. " = " .. result)
        elseif choice == 2 then
            local result = subtraction(num1, num2)
            print("Result: ", result)
            table.insert(history, num1 .. " - " .. num2 .. " = " .. result)
        elseif choice == 3 then
            local result = multiplication(num1, num2)
            print("Result: ", result)
            table.insert(history, num1 .. " * " .. num2 .. " = " .. result)
        elseif choice == 4 then
            local result = division(num1, num2)
            print("Result: ", result)
            table.insert(history, num1 .. " / " .. num2 .. " = " .. result)
        else
            print("Invalid choice. Please try again.")
        end
    end
end