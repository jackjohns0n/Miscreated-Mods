-- remove the block comment to enable

-- sample item spawn mod
-- once you created a new cgf, xml, icons for a new item you also need to make it spawn, this is a sample how to add it to the spawners

-- .. place as many files in the mods folder as you like they all will be executed in same order on client/server resulting in the same indicies etc.

-- insert an additional item spawn
--local newItem = {
  --class = "FancyNewItem", -- the item class name needs to be the same as the one in the xml file
  --percent = 5, -- the percentage will need to be substracted from an existing field in the category
--}

local categoryToAdjust = FindInTable(ItemSpawnerManager.itemCategories, "category", "RandomMilitaryItems")
local categoryItemToAdjust = FindInTable(categoryToAdjust.classes, "class", "hesco_barrier") -- could also search for fitting "class" instead "category"
local categoryItemToAdjust2 = FindInTable(categoryToAdjust.classes, "category", "RandomMilitaryWeaponWithMagazines")
local categoryItemToAdjust3 = FindInTable(categoryToAdjust.classes, "category", "RandomCraftingGuide")
local categoryItemToAdjust4 = FindInTable(categoryToAdjust.classes, "category", "RandomMilitaryClothing")

-- Add new item at the end of list
--table.insert(categoryToAdjust.classes, newItem)

-- Now adjust the weather chance so they total 100% again (substract from ClearSky/pattern 1)
categoryItemToAdjust.percent = 0
categoryItemToAdjust2.percent = 34
categoryItemToAdjust3.percent = 0
categoryItemToAdjust4.percent = 17

-- examine the log file if everything is correct, in doubt you can log information out using System.Log

