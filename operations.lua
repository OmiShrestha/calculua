-- Author: Omi Shrestha
-- operations.lua
-- This file contains all the calculator functions

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
        return math.sqrt(n)
    end
end

-- Function for power
local function power(base, exponent)
    return math.pow(base, exponent)
end

-- Return all functions as a table
return {
    addition = addition,
    subtraction = subtraction,
    multiplication = multiplication,
    division = division,
    factorial = factorial,
    square_root = square_root,
    power = power
}
