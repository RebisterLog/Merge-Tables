# Merge Tables
I created a function in lua that can "fit" one table to the second table (pattern-table) without losing the data available in the primary table.

# Advantages and disadvantages

The algorithm will also work if other tables, arrays, string values, numeric values, boolean values are nested inside the table.

The algorithm has several disadvantages: 
1. The algorithm cannot qualitatively delete data from the table being brought to the pattern
2. The algorithm cannot move data from one nesting to another when combining tables.

# How to use

In the first parameter of the function, pass the table (pattern) to which you want to bring the secondary (driven) table.
The result of this function will be a combined table

# Example

As an example, I decided to take fictional player data that is stored in the database.
 And the pattern table represents a new version of the data for all players.

```lua
  local playerData = {
    Data = {
        Void = {
            [123] = "dog",
        },
        Strength = 20,
        Inventory = {
            ["bow"] = 3,
            ["arrow"] = 4,
            ["quiver"] = {
                ["arrow"] = 5,
                ["bolt"] = 6,
            },
        },
    }
}

local pattern = {
    Data = {
        Void = {}, -- DEFAULT DATA
        Strength = 0, -- DEFAULT DATA
        Inventory = {}, -- DEFAULT DATA

        Money = 0, -- NEW DATA 
        Quest = 0, -- NEW DATA 
    }
}

print(combine(pattern, playerData)) 
--Exit table:
--[[
  {
    Data = {
        Void = {
            [123] = "dog",
        },
        Strength = 20,
        Inventory = {
            ["bow"] = 3,
            ["arrow"] = 4,
            ["quiver"] = {
                ["arrow"] = 5,
                ["bolt"] = 6,
            },
        },

        Money = 0, -- ADDED DATA
        Quest = 0, -- ADDED DATA
    }
  }
]]
```

# Reports and Bugs

for any bugs please dm me in my discord:
![image](https://logowik.com/content/uploads/images/discord-new-20218785.jpg)
```
  My discord: rebisterlog
```
