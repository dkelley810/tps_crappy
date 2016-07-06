minetest.register_on_joinplayer(function(player)
	local numberOfSkins = 1 ' Set the number of skins in ./textures
	local number = math.random(numberOfSkins)
	local filename = minetest.get_modpath("crappy_skins").."/textures/"..number..".png"
	local f = io.open(filename)
	if f then
		f:close()
		default.player_set_textures(player, {number..".png"})
	end
end)
