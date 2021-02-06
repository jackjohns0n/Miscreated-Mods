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
RemoveItemFromTable(VehicleSpawnerManager.vehicleCategories, "category", "tractor")
local newItem = {
    category = "tractor",
	classes =
	{
		{ 
			class = "placeholder12", contents = "RandomF100TruckContents",
			skins =
			{
			},
		},
	},
	initialMinVehicles = 10,
	abandonedTimer = 604800,
	abandonedRespawnTimer = 900,
	destroyedTimer = 30,
	destroyedRespawnTimer = 900,
}
table.insert(VehicleSpawnerManager.vehicleCategories, newItem)