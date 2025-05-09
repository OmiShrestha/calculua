-- Terminal Calculator

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
    print("8. Exit")

    io.write("Choose an option (1-8): ") -- allows user to choose an input a number
    local choice = tonumber(io.read())

    if choice == 8 then
        print("Exiting the calculator.")
        break
    end

    if 
        choice == 5 then
        io.write("Enter a number to calculate its factorial: ")
        local num = tonumber(io.read())
        print("Result: ", factorial(num))

    elseif 
        choice == 6 then
        io.write("Enter a number to calculate its square root: ")
        local num = tonumber(io.read())
        print("Result: ", square_root(num))

    elseif 
        choice == 7 then
        io.write("Enter the base number: ")
        local base = tonumber(io.read())
        io.write("Enter the exponent: ")
        local exponent = tonumber(io.read())
        print("Result: ", power(base, exponent))
        
    else
        io.write("Enter the first number: ")
        local num1 = tonumber(io.read())

        io.write("Enter the second number: ")
        local num2 = tonumber(io.read())

        if choice == 1 then
            print("Result: ", addition(num1, num2))
        elseif choice == 2 then
            print("Result: ", subtraction(num1, num2))
        elseif choice == 3 then
            print("Result: ", multiplication(num1, num2))
        elseif choice == 4 then
            print("Result: ", division(num1, num2))
        else
            print("Invalid choice. Please try again.")
        end
    end
end