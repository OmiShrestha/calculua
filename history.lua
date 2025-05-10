-- Author: Omi Shrestha
--history.lua
-- This file contains the history of calculations performed by the calculator

-- Table that stores calculation history
local history = {}

-- Function to display history (temporary)
local function display_history()
    if #history == 0 then
        print("No calculations have been performed yet.")
    else
        print("\nCalculation History:")
        for i, entry in ipairs(history) do
            print(i .. ". " .. entry)
        end
    end
end

return {
    history = history,
    display_history = display_history
}