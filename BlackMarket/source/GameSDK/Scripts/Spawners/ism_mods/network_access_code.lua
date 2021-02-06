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

RemoveItemFromTable(ItemSpawnerManager.itemCategories, "category", "RandomCraftingGuide")

local newItem = {
			category = "RandomCraftingGuide",
			classes =
			{
				-- generic (18)
				{ class = "guide_medical_bandages", percent = 3 },
				{ class = "guide_weapons_melee", percent = 3 },
				{ class = "guide_structures_tire_stacks", percent = 3 },
				{ class = "guide_structures_wood_storage", percent = 3   },

				-- basic (37)
				{ class = "guide_structures_wood_bridges_1", percent = 2 },
				{ class = "guide_structures_wood_ramps_1", percent = 2 },
				{ class = "guide_structures_wood_stairs_1", percent = 2 },
				{ class = "guide_structures_wood_traps_1", percent = 2 },
				{ class = "guide_structures_wood_walkways_1", percent = 2 },
				{ class = "guide_structures_wood_walls_1", percent = 3 },
				{ class = "guide_structures_wood_roofs", percent = 3 },
				{ class = "guide_powered_parts_1", percent = 3 },
				{ class = "guide_traps_1", percent = 2 },
				{ class = "guide_explosives_1", percent = 2 },
				{ class = "guide_weapons_ranged_1", percent = 3 },

				-- advanced (37)
				{ class = "guide_structures_wood_bridges_2", percent = 2 },
				{ class = "guide_structures_wood_ramps_2", percent = 3 },
				{ class = "guide_structures_wood_stairs_2", percent = 2 },
				{ class = "guide_structures_wood_traps_2", percent = 2 },
				{ class = "guide_structures_wood_walkways_2", percent = 4 },
				{ class = "guide_structures_wood_walls_2", percent = 5 },
				{ class = "guide_traps_2", percent = 2 },
				{ class = "guide_explosives_2", percent = 2 },
				{ class = "guide_weapons_ranged_2", percent = 2 },
				{ class = "guide_weapons_ranged_3", percent = 2 },

				-- specialized (8)
				{ class = "guide_structures_wood_curves", percent = 1 },
				{ class = "guide_structures_wood_gallows", percent = 1 },
				{ class = "guide_structures_wood_watchtower", percent = 1 },
				{ class = "guide_structures_wood_gatehouse", percent = 1 },
        { class = "network_access_code", percent = 32 },
			},
		},

table.insert(ItemSpawnerManager.itemCategories, newItem)
