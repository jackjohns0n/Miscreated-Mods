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
  RemoveItemFromTable(ItemSpawnerManager.itemCategories, "category", "RandomAmmo")
  -- Here we created the new RandomHazmatSuit category that will replace the one we removed
  local newItem = {
    category = "RandomAmmo",
    classes =
    {
      { category = "12GaugeAA12Mags", percent = 1 },
      { category = "12GaugeShells", percent = 4 },
      { category = "9mmMagazine", percent = 2 },
      { category = "RandomAccessory", percent = 3 },
      { category = "RandomChemlight", percent = 2 },
      { category = "RandomSmokeGrenade", percent = 2 },
      { category = "RandomExtendedMagazines", percent = 3 },
      { class = "545x30", percent = 2 },
      { class = "57x50", percent = 2 },
      { class = "762x5", percent = 2 },
      { class = "9mmx10_makarov", percent = 2 },
      { class = "9mmx15_m9a1", percent = 2 },
      { class = "9mmx19_ap85", percent = 1 },
      { class = "acp_45x20", percent = 2 },
      { class = "acp_45x30", percent = 2 },
      { class = "10mmx15", percent = 2 },
      { class = "10mmx30", percent = 2 },
      { class = "22x10_ruger", percent = 2 },
      { class = "acp_45x10_hk", percent = 2 },
      { class = "acp_45x7", percent = 3 },
      { class = "762x30", percent = 3 },
      { class = "Arrowx8", percent = 2.5 },
      --{ class = "CupidArrowx8", percent = 2.5 }, vday
      { class = "Boltx5_0000", percent = 2 },
      { class = "M40x5", percent = 0.99 },
      { class = "556x100", percent = 0.01 },
      { class = "Pile_10mm", percent = 2 },
      { class = "Pile_22", percent = 2 },
      { class = "Pile_545x39", percent = 2 },
      { class = "Pile_57x28", percent = 2 },
      { class = "Pile_223", percent = 3 },
      { class = "Pile_308", percent = 3 },
      { class = "Pile_357", percent = 3 },
      { class = "Pile_45ACP", percent = 3 },
      { class = "Pile_556x45", percent = 3 },
      { class = "Pile_762x39", percent = 2 },
      { class = "Pile_762x51", percent = 2 },
      { class = "Pile_9mm", percent = 3.5 },
      { class = "Pile_Flare", percent = 3.5 },
      { class = "Pile_TranquilizerDart", percent = 3 },
      { class = "STANAGx30", percent = 2 },
      { class = "556x30_ak5d", percent = 2 },
      { class = "762x20_Akval", percent = 2 },
      { class = "9x19_mac10", percent = 2 },
      { class = "Pile_40mmGrenade", percent = 0.3 },
    },
  }
  -- Here we are adding the new RandomHazmatSuit category we created to the ItemSpawnManager's itemCategories Table
  table.insert(ItemSpawnerManager.itemCategories, newItem)
  
  local newerItem = {
    category = "RandomExtendedMagazines",
    classes =
    {
      { class = "9x19_mac10_32", percent = 3 },
      { class = "762x30_Akval", percent = 5 },
      { class = "556x40_ak5d", percent = 5 },
      { class = "762x40", percent = 5 },
      { class = "acp_45x30_cx8", percent = 5 },
      { class = "STANAGx40", percent = 5 },
      { class = "M40X7", percent = 5 },
      { class = "acp_45x40", percent = 5 },
      { class = "acp_45x15_hk", percent = 5 },
      { class = "acp_45x14", percent = 5 },
      { class = "762x7", percent = 5 },
      { class = "556x150", percent = 3 },
      { class = "545x40", percent = 5 },
      { class = "357x20", percent = 5 },
      { class = "57x60", percent = 5 },
      { class = "22x15_ruger", percent = 5 },
      { class = "9mmx20_makarov", percent = 5 },
      { class = "10mmx40", percent = 5 },
      { class = "9mmx25_m9a1", percent = 5 },
      { class = "9mmx25_ap85", percent = 5 },
      { class = "10mmx30_vector", percent = 4 },
    },
  }
  -- Here we are adding the new RandomHazmatSuit category we created to the ItemSpawnManager's itemCategories Table
  table.insert(ItemSpawnerManager.itemCategories, newerItem)