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
RemoveItemFromTable(VehicleSpawnerManager.vehicleCategories, "category", "towcar")
local newItem = {
    category = "towcar",
	classes =
	{
		{ 
			class = "placeholder1", contents = "RandomF100TruckContents",
			skins =
			{
				-- If the total doesn't equal 100% then the remainder will spawn with the default skin
				{ name = "placeholder1_Black", percent = 30 },
				{ name = "placeholder1_Green", percent = 35 },
				{ name = "placeholder1_Yellow", percent = 35 },
			},
		},
	},
	initialMinVehicles = 10,
	abandonedTimer = 1209600,
	abandonedRespawnTimer = 900,
	destroyedTimer = 120,
	destroyedRespawnTimer = 900,
}
table.insert(VehicleSpawnerManager.vehicleCategories, newItem)