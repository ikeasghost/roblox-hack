local old_mathrandom = clonefunction(getrenv().math.random)

hookfunction(getgenv().math.random, function(...)
    if getfenv(2).script.Name == "KnifeLocal" then
        return 0
    end
    return(old_mathrandom(...))
end)