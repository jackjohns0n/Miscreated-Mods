-- remove the block comment to enable

-- sample item spawn mod
-- once you created a new cgf, xml, icons for a new item you also need to make it spawn, this is a sample how to add it to the spawners

-- .. place as many files in the mods folder as you like they all will be executed in same order on client/server resulting in the same indicies etc.

-- insert an additional item spawn
local newItem = { class = "9mmx20_makarov", percent= 1, }

local categoryToAdjust = FindInTable(ItemSpawnerManager.itemCategories, "category", "RandomAmmo")
local categoryItemToAdjust = FindInTable(categoryToAdjust.classes, "class", "9mmx10_makarov")
local categoryItemToAdjust1 = FindInTable(categoryToAdjust.classes, "category", "RandomAccessory") -- could also search for fitting "class" instead "category"
local categoryItemToAdjust2 = FindInTable(categoryToAdjust.classes, "category", "RandomChemlight")
local categoryItemToAdjust3 = FindInTable(categoryToAdjust.classes, "category", "RandomSmokeGrenade")

-- Add new item at the end of list

table.insert(categoryToAdjust.classes, newItem)

-- Now adjust the weather chance so they total 100% again (substract from ClearSky/pattern 1)

categoryItemToAdjust.percent = 1
categoryItemToAdjust1.percent = 0
categoryItemToAdjust2.percent = 0
categoryItemToAdjust3.percent = 0

-- examine the log file if everything is correct, in doubt you can log information out using System.Log