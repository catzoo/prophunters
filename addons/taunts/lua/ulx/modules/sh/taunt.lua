local CATEGORY_NAME = "Fun"  -- Taken from ulx module sh\vote.lua
                                -- Basically the category for ulx commands

function ulx.taunt( ply )
    ply:ConCommand("ph_menu_taunt")
end

local tauntcmd = ulx.command( CATEGORY_NAME, "ulx taunt", ulx.taunt, "!taunt" )
tauntcmd:defaultAccess( ULib.ACCESS_ALL )
tauntcmd:help( "Prophunters Taunt menu" )
