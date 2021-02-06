-- remove the block comment to enable

-- sample item spawn mod
-- once you created a new cgf, xml, icons for a new item you also need to make it spawn, this is a sample how to add it to the spawners

-- .. place as many files in the mods folder as you like they all will be executed in same order on client/server resulting in the same indicies etc.

-- insert an additional item spawn
local newItem = { class = "12Gaugex16_Slug_AA12", percent= 17, }

local categoryToAdjust = FindInTable(ItemSpawnerManager.itemCategories, "category", "12GaugeAA12Mags")
local categoryItemToAdjust = FindInTable(categoryToAdjust.classes, "class", "12Gaugex8_Pellet_AA12")

-- Add new item at the end of list

table.insert(categoryToAdjust.classes, newItem)

-- Now adjust the weather chance so they total 100% again (substract from ClearSky/pattern 1)

categoryItemToAdjust.percent = 17

-- examine the log file if everything is correct, in doubt you can log information out using System.Log