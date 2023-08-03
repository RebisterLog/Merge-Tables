function mergeTables(pattern, copy)
    local exitTable = {}

    for index, value in pairs(pattern) do

        if type(value) == "table" then
            exitTable[index] = combine(value, copy[index] or {})
        else
            exitTable[index] = copy[index] or value
        end

    end

    for index, value in pairs(copy) do

        if exitTable[index] == nil then
            exitTable[index] = value
        end

    end

    return exitTable
end
