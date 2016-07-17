--Set emulation
emu.speedmode("normal") 

--Declare variables
warp_used = false
menu_exit = false
--Declare session achievement progress
achievement_grass = false
achievement_desert = false
achievement_water = false
achievement_giant = false
achievement_sky = false
achievement_ice = false
achievement_pipe = false
achievement_dark = false

achievement_cheater = false

achievement_big = false;
achievement_fire = false;
achievement_raccoon = false;
achievement_frog = false;
achievement_tanooki = false;
achievement_hammer = false;

achievement_smaller = false;

achievement_stomp_1 = false;
achievement_stomp_2 = false;
achievement_stomp_3 = false;
achievement_stomp_4 = false;
achievement_stomp_5 = false;

achievement_total_stomp_1 = false;
achievement_total_stomp_2 = false;
achievement_total_stomp_3 = false;

--Declare session achievement names
achievement_grass_name = "Grass Conqueror"
achievement_desert_name = "Desert Conqueror"
achievement_water_name = "Water Conqueror"
achievement_giant_name = "Giant Conqueror"
achievement_sky_name = "Sky Conqueror"
achievement_ice_name = "Ice Conqueror"
achievement_pipe_name = "Pipe Conqueror"
achievement_dark_name = "Dark Conqueror"

achievement_cheater_name = "Cheater"

achievement_big_name = "Bigger is Better"
achievement_fire_name = "I'm on fire"
achievement_raccoon_name = "The sky is the limit"
achievement_frog_name = "Ribbit!"
achievement_tanooki_name = "Another tail"
achievement_hammer_name = "Taste of their own medicine"

achievement_smaller_name = "Not Invincible"

achievement_stomp_1_name = "Small Stomp";
achievement_stomp_2_name = "Medium Stomp";
achievement_stomp_3_name = "Large Stomp";
achievement_stomp_4_name = "Huge Stomp";
achievement_stomp_5_name = "Expert Stomp";

achievement_total_stomp_1_name = "Goomba Krusher";
achievement_total_stomp_2_name = "Goomba Pulverizer";
achievement_total_stomp_3_name = "Goomba Slaughter";

--totals
total_stomp = 0

--other vars
power = 0;
power_last = 0;
stomp = 0;
last_stomp = 0;

--Declare world enum
local world_grass,world_desert,world_water,world_giant,world_sky,world_ice,world_pipe,world_dark,world_warp = 0,1,2,3,4,5,6,7,8
--Declare power enum
local power_small,power_big,power_fire,power_raccoon,power_frog,power_tanooki,power_hammer = 0,1,2,3,4,5,6
--Declare stomp levels
local stomp_1,stomp_2,stomp_3,stomp_4,stomp_5 = 2,3,4,5,8

--Declare total stomp levels
local total_stomp_1,total_stomp_2,total_stomp_3 = 100,500,1000


function f_alert_unlock(name)
	print("You have unlocked the achievement: "..name)
end

--Calculate world based achievements
function f_ach_world()
	--Get the world number from RAM
	world = memory.readbyte(0x0727)
	--Test conditions
	if not warp_used then
		if world == world_desert and not achievement_grass then
			achievement_grass = true
			f_alert_unlock(achievement_grass_name)
		end
		if world == world_water and not achievement_desert then
			achievement_desert = true
			f_alert_unlock(achievement_desert_name)
		end
		if world == world_giant and not achievement_water then
			achievement_water = true
			f_alert_unlock(achievement_water_name)
		end
		if world == world_sky and not achievement_giant then
			achievement_giant = true
			f_alert_unlock(achievement_giant_name)
		end
		if world == world_ice and not achievement_sky then
			achievement_sky = true
			f_alert_unlock(achievement_sky_name)
		end
		if world == world_pipe and not achievement_ice then
			achievement_ice = true
			f_alert_unlock(achievement_ice_name)
		end
		if world == world_dark and not achievement_pipe then
			achievement_pipe = true
			f_alert_unlock(achievement_pipe_name)
		end
	end
	if world == world_warp and not achievement_cheater then
		warp_used = true
		achievement_cheater = true
		f_alert_unlock(achievement_cheater_name)
	end
end

function f_ach_power()
	power = memory.readbyte(0x00ED)
	if power == power_big and not achievement_big then
		achievement_big = true
		f_alert_unlock(achievement_big_name)
	end
	if power == power_fire and not achievement_fire then
		achievement_fire = true
		f_alert_unlock(achievement_fire_name)
	end
	if power == power_raccoon and not achievement_raccoon then
		achievement_raccoon = true
		f_alert_unlock(achievement_raccoon_name)
	end
	if power == power_frog and not achievement_frog then
		achievement_frog = true
		f_alert_unlock(achievement_frog_name)
	end
	if power == power_tanooki and not achievement_tanooki then
		achievement_tanooki = true
		f_alert_unlock(achievement_tanooki_name)
	end
	if power == power_hammer and not achievement_hammer then
		achievement_hammer = true
		f_alert_unlock(achievement_hammer_name)
	end

	if power < power_last and not achievement_smaller then
		achievement_smaller = true
		f_alert_unlock(achievement_smaller_name)
	end

	power_last = power
end

function f_ach_skill()
	stomp = memory.readbyte(0x05F4)
	if stomp == stomp_1 and not achievement_stomp_1 then
		achievement_stomp_1 = true
		f_alert_unlock(achievement_stomp_1_name)
	end
	if stomp == stomp_2 and not achievement_stomp_2 then
		achievement_stomp_2 = true
		f_alert_unlock(achievement_stomp_2_name)
	end
	if stomp == stomp_3 and not achievement_stomp_3 then
		achievement_stomp_3 = true
		f_alert_unlock(achievement_stomp_3_name)
	end
	if stomp == stomp_4 and not achievement_stomp_4 then
		achievement_stomp_4 = true
		f_alert_unlock(achievement_stomp_4_name)
	end
	if stomp == stomp_5 and not achievement_stomp_5 then
		achievement_stomp_5 = true
		f_alert_unlock(achievement_stomp_5_name)
	end
end

function f_ach_stats()
	lives = memory.readbyte(0x0736)
end

function f_ach_totals()
	stomp = memory.readbyte(0x05F4)
	--Calculate additions to stomp counter
	if stomp > last_stomp then
		total_stomp = total_stomp + 1
	end
	last_stomp = stomp


	if total_stomp >= total_stomp_1 and not achievement_total_stomp_1 then
		achievement_total_stomp_1 = true
		f_alert_unlock(achievement_total_stomp_1_name)
	end
	if total_stomp >= total_stomp_2 and not achievement_total_stomp_2 then
		achievement_total_stomp_2 = true
		f_alert_unlock(achievement_total_stomp_2_name)
	end
	if total_stomp >= total_stomp_3 and not achievement_total_stomp_3 then
		achievement_total_stomp_3 = true
		f_alert_unlock(achievement_total_stomp_3_name)
	end
end

--Main loop
while true do
	--advance emulation
	emu.frameadvance()
	if not menu_exit then
		if memory.readbyte(0x0023) ~= 0 then
			menu_exit = true
		end
	else
		--Calculate achievements to do with world
		f_ach_world()
		f_ach_power()
		f_ach_skill()
		f_ach_stats()
		f_ach_totals()
	end
end