
minetest.register_on_dieplayer(function(player)

	-- get player inventory
	local player_inv = player:get_inventory()

	-- empty lists main and craft
	if player_inv then
		player_inv:set_list("main", {})
		player_inv:set_list("craft", {})
	end

end)
