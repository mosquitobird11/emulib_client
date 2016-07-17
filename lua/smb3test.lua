--Set emulation
emu.speedmode("normal") 

--Declare variables
warp_used = false
--Declare session achievement progress
achievement_grass = false
achievement_desert = false
achievement_water = false
achievement_giant = false
achievement_sky = false
achievement_ice = false
achievement_pipe = false
achievement_dark = false
--Declare session achievement names
achievement_grass = "Grass Conqueror"
achievement_desert = "Grass Conqueror"
achievement_water = "Grass Conqueror"
achievement_giant = "Grass Conqueror"
achievement_sky = "Grass Conqueror"
achievement_ice = "Grass Conqueror"
achievement_pipe = "Grass Conqueror"
achievement_dark = "Grass Conqueror"
--Declare world enum
local grass,desert,water,giant,sky,ice,pipe,dark,warp = 0,1,2,3,4,5,6,7,8


--Main loop
while true do
	--advance emulation
	emu.frameadvance()
	--Calculate achievements to do with world
	f_ach_world()
end

--Calculate world based achievements
function f_ach_world()
	--Get the world number from RAM
	world = memory.readbyte(0x0727)
	--Test conditions
	if not warp_used then
		if world == desert then
			achievement_desert = true;
			f_alert_unlock(achievement_desert_name)
		end
	end
end