-- Terminal Calculator

-- Function to perform addition
local function add(a, b)
    return a + b
end

-- Function to perform subtraction
local function subtract(a, b)
    return a - b
end

-- Function to perform multiplication
local function multiply(a, b)
    return a * b
end

-- Function to perform division
local function divide(a, b)
    if b == 0 then
        return "Error: Division by zero"
    else
        return a / b
    end
end

-- Main program loop
while true do
    print("\nSimple Calculator")
    print("1. Addition")
    print("2. Subtraction")
    print("3. Multiplication")
    print("4. Division")
    print("5. Exit")

    io.write("Choose an option (1-5): ") -- allows user to choose an input (number)
    local choice = tonumber(io.read())

    if choice == 5 then
        print("Exiting the calculator. Goodbye!")
        break
    end

    io.write("Enter the first number: ")
    local num1 = tonumber(io.read())

    io.write("Enter the second number: ")
    local num2 = tonumber(io.read())

    if choice == 1 then
        print("Result: ", add(num1, num2))
    elseif choice == 2 then
        print("Result: ", subtract(num1, num2))
    elseif choice == 3 then
        print("Result: ", multiply(num1, num2))
    elseif choice == 4 then
        print("Result: ", divide(num1, num2))
    else
        print("Invalid choice. Please try again.")
    end
end