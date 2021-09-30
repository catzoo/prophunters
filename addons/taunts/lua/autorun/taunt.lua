if SERVER then
    AddCSLuaFile()
    AddCSLuaFile("taunt/cl_taunt.lua")
    AddCSLuaFile("taunt/sh_taunt.lua")
    AddCSLuaFile("taunt/cl_hud.lua")

    include("taunt/sv_taunt.lua")
else
    include("taunt/sh_taunt.lua")
    include("taunt/cl_taunt.lua")
    include("taunt/cl_hud.lua")
end

