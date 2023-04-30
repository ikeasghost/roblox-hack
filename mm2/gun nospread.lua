local hook
local old_mathrandom = clonefunction(getrenv().math.random)

hook = hookfunction(getrenv().math.random, function(...)
    if getfenv(2).script.Name == "KnifeLocal" then
        return 0
    end
    return old_mathrandom(...)
end)
