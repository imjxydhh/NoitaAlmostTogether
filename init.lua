local mymodule = dofile_once("mods/my_first_mod/files/scripts/mymodule.lua")
-- all functions below are optional and can be left out

function OnModPreInit()
	print("Mod - OnModPreInit()") -- First this is called for all mods
	mymodule.HelloWorld()
end

function OnModInit()
	print("Mod - OnModInit()") -- After that this is called for all mods
end

function OnModPostInit()
	print("Mod - OnModPostInit()") -- Then this is called for all mods
end

function OnPlayerSpawned( player_entity ) -- This runs when player entity has been created
	print( "OnPlayerSpawned() - Player entity id: " .. tostring(player_entity) )
end

function OnWorldInitialized() -- This is called once the game world is initialized. Doesn't ensure any world chunks actually exist. Use OnPlayerSpawned to ensure the chunks around player have been loaded or created.
	print( "OnWorldInitialized() " .. tostring(GameGetFrameNum()) )
end

-- function OnWorldPreUpdate() -- This is called every time the game is about to start updating the world
-- 	GamePrint( "Pre-update hook " .. tostring(GameGetFrameNum()) )
-- end

-- function OnWorldPostUpdate() -- This is called every time the game has finished updating the world
-- 	GamePrint( "Post-update hook " .. tostring(GameGetFrameNum()) )
-- end

-- Seems to be called before the world is initialized
function OnMagicNumbersAndWorldSeedInitialized() -- this is the last point where the Mod* API is available. after this materials.xml will be loaded.
	local x = ProceduralRandom(0,0)
	print( "===================================== random " .. tostring(x) )
end
