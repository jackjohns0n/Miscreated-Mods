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
-- Calls the function RemoveItemFromTable and tells it to look in the ItemSpawnerManager
-- table's itemCategories Table for a category called RandomHazmatSuit
RemoveItemFromTable(ItemSpawnerManager.itemCategories, "category", "RandomAirDropCrate")
-- Here we created the new RandomHazmatSuit category that will replace the one we removed
local newItem = {
  -- The cargo drop crate has 20 slots
  category = "RandomAirDropCrate",
  classes =
  {
    { category = "RandomAirDropCratePolice", percent = 17 },
    { category = "RandomAirDropCrateMilitary", percent = 14 },
    { category = "RandomAirDropCrateCivilian", percent = 27 },
    { category = "RandomAirDropCrateExplosives", percent = 4 },
    { category = "RandomAirDropCrateBaseBuilding", percent = 17 },
    { category = "RandomAirDropCrateRadiation", percent = 17 },
    { category = "RandomAirDropCrateSalt", percent = 2 },
    { category = "RandomAirDropCrateBandage", percent = 2 },
  },
}
-- Here we are adding the new RandomHazmatSuit category we created to the ItemSpawnManager's itemCategories Table
table.insert(ItemSpawnerManager.itemCategories, newItem)