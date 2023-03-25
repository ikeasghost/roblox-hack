--[[
    File: PBF anti cheat bypass | 3/25/2023
    Author: ikea
    Description: bypasses the shitty anticheat that the retard devs paid for

    Notes:
    use with caution
    yea this is kinda all there is to the bypass because this is the only thing they do that actually does anything
    all their anticheat does is scan for certain images, then sends them to the server

    example below:

    game:GetService("ReplicatedStorage").Network["mGDFgm!:qWNpfa(;c^n+"]:FireServer( --remotes constantly change
        "n^9&G#/Wt`Su#0V^+h/Q", --remote event key (static, but changes on rejoin/server)
        "ee2dda8821f14b3a9b8421e9942cce14", --not sure
        2, --also not sure
        "rbxassetid://4921676405" --the blacklisted image's id
    )

    > execute a certain ui library
    > you get kicked because one of the images used is blacklisted
    bypasses: protect it before it gets detected (certain dumbass ui libraries dont automatically do this) or use getcustomasset/getsynasset for images
]]--


local CoreGui = cloneref(game:GetService("CoreGui"))

CoreGui.ChildAdded:Connect(function(g)
    if g.ClassName == "ScreenGui" and g.Name:find("{") and string.len(g.Name) == 38 then --only works for wally's v3 ui library, but this gives a general idea on how to bypass the detection
        syn.protect_gui(g)
    end
end)
