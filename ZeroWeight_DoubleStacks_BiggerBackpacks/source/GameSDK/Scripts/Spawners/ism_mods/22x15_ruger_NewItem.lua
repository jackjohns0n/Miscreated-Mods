-- remove the block comment to enable

-- sample item spawn mod
-- once you created a new cgf, xml, icons for a new item you also need to make it spawn, this is a sample how to add it to the spawners

-- .. place as many files in the mods folder as you like they all will be executed in same order on client/server resulting in the same indicies etc.

-- insert an additional item spawn
local newItem = { class = "22x15_ruger", percent= 1.5, }

local categoryToAdjust = FindInTable(ItemSpawnerManager.itemCategories, "category", "RandomAmmo")
local categoryItemToAdjust = FindInTable(categoryToAdjust.classes, "class", "22x10_ruger")

-- Add new item at the end of list

table.insert(categoryToAdjust.classes, newItem)

-- Now adjust the weather chance so they total 100% again (substract from ClearSky/pattern 1)

categoryItemToAdjust.percent = 1

-- examine the log file if everything is correct, in doubt you can log information out using System.Log