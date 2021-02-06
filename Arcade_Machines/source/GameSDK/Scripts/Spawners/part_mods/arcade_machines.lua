-- I use this function to remove an entire category from a table based on the category name.
function RemoveItemFromTable(tbl, keyname, keyvalue)
	for i,v in ipairs(tbl) do
	    if (v[keyname] == keyvalue) then
			-- If the current table category name is the one we are looking for then
			-- remove the category from the table.
	        table.remove(tbl, i);
	        break;
	   end
	end
end

RemoveItemFromTable(PartSpawnerManager.categories, "category", "metal_part")

local newItem = {
			category = "metal_part",
			classes =
			{
				-- doors (7)
				{ class = "metal_door_lockable_1m_2m", percent = 6 },

				-- walls (58.99)
				{ class = "metal_aframe_3m_4m", percent = 4 },
				{ class = "metal_wall_1_3m_2m", percent = 4 },
				{ class = "metal_wall_1_3m_4m", percent = 5 }, 
				{ class = "metal_wall_2m_2m", percent = 5 },
				{ class = "metal_wall_2m_4m", percent = 4 },
				{ class = "metal_wall_3m_2m", percent = 7 },
				{ class = "metal_wall_3m_4m", percent = 10.99 },

				-- special walls (20)
				{ class = "metal_wall_door_3m_4m", percent = 4 }, 
				{ class = "metal_wall_window_3m_2m", percent = 3 },
				{ class = "metal_wall_window_3m_4m", percent = 3 },

				-- gatehouse (10)
				{ class = "metal_gatehouse_4m_8m", percent = 4 },
				{ class = "metal_gate_lockable_3m_5_4m", percent = 3 },

				-- misc (4.01)
				{ class = "metal_steam_stand", percent = 4 },
				{ class = "gnome_giant_c", percent = 0.01 },
				{ class = "arcade_cabinet", percent = 7 },
        { class = "arcade_cabinet_simpsons", percent = 7 },
        { class = "arcade_cabinet_miscreated", percent = 6 },
        { class = "arcade_cabinet_twitch", percent = 6 },
        { class = "arcade_cabinet_mrspacman", percent = 7 },
				-- { class = "christmas_tree", percent = 5.0 }, -- disabled until christmas
			},
		},

table.insert(PartSpawnerManager.categories, newItem)

dump(PartSpawnerManager) -- this is a lot
