--[[
    File: pbf spoof.lua
    Author: ikea
    Description: spoof ip and other identifiers for PBF's ip logging mechanism (as of April 1st, 2023)
    
    Notes:
    not made for bypassing paid scripts

    @faithful nice global funcs
    (hes blacklisted now LOL)
]]--

local HttpService = cloneref(game:GetService("HttpService"))
local old = clonefunction(syn.request)

local hook
hook = hookfunction(syn.request, newcclosure(function(self)
    if not checkcaller() then --try changing the url now dumbass LOL
        return {
            StatusMessage = "OK",
            Success = true,
            StatusCode = 200,
            Body = HttpService:JSONEncode({
                connection = {
                    asn = 9999,
                    domain = "niceglobalfuncsretard.com",
                    isp = "Eat A Bag Of Shit Co.",
                    org = "Eat A Bag Of Shit Co."
                },
                flag = {},
                ip = "192.168.1.1", --no place like home
                city = "ChadWardenCity",
                calling_code = "420",
                latitude = 91021,
                country_code = "US",
                ["type"] = "IPv4",
                country = "United States",
                continent = "North America",
                timezone = {},
                region_code = "HI",
                borders = "PO,OP",
                postal = "69420"
            }),
            Cookies = {},
            Headers = {},
        }
    end
    return old(self)
end))
