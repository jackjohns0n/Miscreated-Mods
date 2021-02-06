local newItem = { class = "MutantMeatSteakRaw", percent = 75, min = 4, max = 5 }

local categoryToAdjust1 = FindInTable(ItemSpawnerManager.itemCategories, "category", "RandomMutantLoot")
local categoryToAdjust2 = FindInTable(ItemSpawnerManager.itemCategories, "category", "RandomBruteLoot")
local categoryToAdjust3 = FindInTable(ItemSpawnerManager.itemCategories, "category", "RandomMutantLoot")

table.insert(categoryToAdjust1.group, newItem)
table.insert(categoryToAdjust2.group, newItem)
table.insert(categoryToAdjust3.group, newItem)