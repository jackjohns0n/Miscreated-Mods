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

RemoveItemFromTable(ItemSpawnerManager.itemCategories, "category", "RandomMilitaryWeaponWithMagazines")

local newItem = {
			category = "RandomMilitaryWeaponWithMagazines",
			classes =
			{
				{ category = "RandomPoliceWeaponWithMagazines", percent = 19.5 },
				{ category = "M249WithMagazines", percent = .5 },
				{ category = "KrissVWithMagazines", percent = 5 },
				{ category = "M1911WithMagazines", percent = 10 },
				{ category = "M40A5WithMagazines", percent = 5 },
				{ category = "M16WithMagazines", percent = 15 },
				{ category = "AT15WithMagazines", percent = 15 },
				{ category = "SCARWithMagazines", percent = 15 },
				{ category = "M4A1WithMagazines", percent = 15 },
			},
		}

table.insert(ItemSpawnerManager.itemCategories, newItem)
-- examine the log file if everything is correct, in doubt you can log information out using System.Log/server.log
--dump(ItemSpawnerManager) -- this is a lot
--dump(categoryToAdjust) -- just the category (smarter choice to debug ;))
