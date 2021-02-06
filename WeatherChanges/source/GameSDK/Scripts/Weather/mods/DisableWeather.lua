-- remove the block comment to enable

-- Other options include disabling a pattern: 

-- find the patterns to modify (using function from common.lua)
local patternToAdjust = FindInTable(Weather.patterns, "name", "AcidRain")
local patternToAdjust2 = FindInTable(Weather.patterns, "name", "HeavyRain")
local patternToAdjust3 = FindInTable(Weather.patterns, "name", "MediumRain")
local patternToAdjust4 = FindInTable(Weather.patterns, "name", "NuclearFlashFreeze")
local patternToAdjust5 = FindInTable(Weather.patterns, "name", "TheMist")
local patternToAdjust6 = FindInTable(Weather.patterns, "name", "HeavyFog")
local patternToAdjust7 = FindInTable(Weather.patterns, "name", "MediumFog")
local patternToAdjust8 = FindInTable(Weather.patterns, "name", "RadStorm")
local patternToAdjust9 = FindInTable(Weather.patterns, "name", "HeavyStorm")

-- add probability
patternToAdjust2.probability = 2
patternToAdjust3.probability = 2
patternToAdjust5.probability = 2
patternToAdjust6.probability = 2
patternToAdjust7.probability = 2
patternToAdjust9.probability = 2

-- remove probability
patternToAdjust.probability = 0
patternToAdjust4.probability = 0
patternToAdjust8.probability = 0

-- the same way any other properties can be modified of exisiting patterns

--