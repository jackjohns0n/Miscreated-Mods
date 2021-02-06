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

RemoveItemFromTable(ItemSpawnerManager.itemCategories, "category", "RandomAirDropCrate")

local newItem = 		{
			category = "RandomAirDropCrate",
			classes =
			{
				{ category = "RandomAirDropCratePolice", percent = 18.4 },
				{ category = "RandomAirDropCrateMilitary", percent = 17.4 },
				{ category = "RandomAirDropCrateCivilian", percent = 18.4 },
				{ category = "RandomAirDropCrateExplosives", percent = 5 },
				{ category = "RandomAirDropCrateBaseBuilding", percent = 18.4 },
				{ category = "RandomAirDropCrateRadiation", percent = 17.4 },
				{ category = "RandomAirDropCrateSalt", percent = 5 },
			},
		}
		
table.insert(ItemSpawnerManager.itemCategories, newItem)

--dump(ItemSpawnerManager) -- this is a lot
--dump(categoryToAdjust) -- just the category (smarter choice to debug ;))

