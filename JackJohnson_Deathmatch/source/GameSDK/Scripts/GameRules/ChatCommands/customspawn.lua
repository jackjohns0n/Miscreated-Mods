--food(500.0) = 33%, (1000) = 66%, (1400) = 93%
--water(750.0) = 42%, (1500) = 85%, (1600) = 91%
-- Initialize the player
-- Use this to initialize the player before the server respawns the player
-- Any change to the player's position and rotation would have to be done here
function Miscreated:RevivePlayer(playerId)
	Log(">> Miscreated:RevivePlayer");

	local player = System.GetEntity(playerId);

	if (player and player.player) then
    Log(">> Miscreated:RevivePlayer - Setting %s health to 100%", player:GetName());
    
		player.player:SetHealth(100.0);
    
    player.player:SetFood(1500.0);
    
    player.player:SetWater(1750.0);
	end
end
function Miscreated:InitPlayer(playerId)
  Log(">> Miscreated:InitPlayer");

    local player = System.GetEntity(playerId);

  if (player and player.player) then
		Log(">> Miscreated:InitPlayer - Name: %s", player:GetName());
		Log(">> Miscreated:InitPlayer - Steam64ID: %s", player.player:GetSteam64Id());
    
        player.player:SetHealth(100.0);
    
        player.player:SetFood(1500.0);
    
        player.player:SetWater(1750.0);
    
--[[    local rnd = random(1, 6)
    if (rnd ==1) then
		g_Vectors.temp_v1.x = 5365.9169921875;
		g_Vectors.temp_v1.y = 2122.59106445312;
		g_Vectors.temp_v1.z = 26.2360000610352;
    elseif (rnd ==2) then
    g_Vectors.temp_v1.x = 5660.51513671875;
		g_Vectors.temp_v1.y = 2111.28393554687;
		g_Vectors.temp_v1.z = 24.75;
    elseif (rnd ==3) then
    g_Vectors.temp_v1.x = 5520.77099609375;
		g_Vectors.temp_v1.y = 2313.97290039062;
		g_Vectors.temp_v1.z = 24.75;
    elseif (rnd ==4) then
    g_Vectors.temp_v1.x = 5132.4619140625;
		g_Vectors.temp_v1.y = 1948.46704101563;
		g_Vectors.temp_v1.z = 24.7119998931885;
    elseif (rnd ==5) then
    g_Vectors.temp_v1.x = 5334.14208984375;
		g_Vectors.temp_v1.y = 2565.60009765625;
		g_Vectors.temp_v1.z = 24.7000007629395;
    else
    g_Vectors.temp_v1.x = 5260.4169921875;
		g_Vectors.temp_v1.y = 2076.09594726562;
		g_Vectors.temp_v1.z = 26.5;
  end

		player:SetWorldPos(g_Vectors.temp_v1);--]]
  end
end
function Miscreated:EquipPlayer(playerId)
	Log(">> Miscreated:EquipPlayer");
  
	local player = System.GetEntity(playerId);

	if (player and player.player) then

    local rnd = random(1, 4)
    if (rnd == 1) then
      ISM.GiveItem(playerId, "Shotgun870Tactical", true);
      ISM.GiveItem(playerId, "Pile_12GaugeSlug");
      ISM.GiveItem(playerId, "FlashlightRifle");
      ISM.GiveItem(playerId, "TshirtTargetBlue");
      ISM.GiveItem(playerId, "ChemlightBluePickup");
      ISM.GiveItem(playerId, "ChemlightBluePickup");
      ISM.GiveItem(playerId, "KatanaBlackWidow", false);
      ISM.GiveItem(playerId, "HeadbandBlue");
      ISM.GiveItem(playerId, "StowPackBlue");
      ISM.GiveItem(playerId, "Pile_12GaugeSlug");
      ISM.GiveItem(playerId, "BandanaBlue");
      ISM.GiveItem(playerId, "Aviators");
      ISM.GiveItem(playerId, "ScarfBlue");
      ISM.GiveItem(playerId, "PoliceVestBlue");
      ISM.GiveItem(playerId, "SneakersBlueBlack");
      ISM.GiveItem(playerId, "CargoShortsBlue");
      ISM.GiveItem(playerId, "Rope");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Carrots");
    elseif (rnd == 2) then
      ISM.GiveItem(playerId, "CraftedSMG", true);
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "Maglite");
      ISM.GiveItem(playerId, "BaseballBatHerMajesty");
      ISM.GiveItem(playerId, "StowPackYellow");
      ISM.GiveItem(playerId, "ChemlightYellowPickup");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "HeadbandYellow");
      ISM.GiveItem(playerId, "Bandana");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "9mmx19");
      ISM.GiveItem(playerId, "PotatoesBurned");
      ISM.GiveItem(playerId, "ScarfYellow");
      ISM.GiveItem(playerId, "Aviators");
      ISM.GiveItem(playerId, "RainJacketYellow");
      ISM.GiveItem(playerId, "WoolGlovesWhite");
      ISM.GiveItem(playerId, "Rope");
      ISM.GiveItem(playerId, "HitopsYellow");
      ISM.GiveItem(playerId, "TrackPantsYellow");
    elseif (rnd == 3) then
      ISM.GiveItem(playerId, "RecurveBow", true);
      ISM.GiveItem(playerId, "Arrowx8_F000");
      ISM.GiveItem(playerId, "ReflexSightBow");
      ISM.GiveItem(playerId, "Maglite");
      ISM.GiveItem(playerId, "Model70");
      ISM.GiveItem(playerId, "Pile_223");
      ISM.GiveItem(playerId, "OpticScope");
      ISM.GiveItem(playerId, "ChemlightGreenPickup");
      ISM.GiveItem(playerId, "HeadbandGreen");
      ISM.GiveItem(playerId, "BandanaGreen");
      ISM.GiveItem(playerId, "ScarfGreen");
      ISM.GiveItem(playerId, "Aviators");
      ISM.GiveItem(playerId, "StowPackGreen");
      ISM.GiveItem(playerId, "Arrowx8_0BRP");
      ISM.GiveItem(playerId, "AntiradiationPills");
      ISM.GiveItem(playerId, "Antibiotics");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "EggChickenBurned");
      ISM.GiveItem(playerId, "PuffyJacketGreenWhite");
      ISM.GiveItem(playerId, "WoolGlovesGreen");
      ISM.GiveItem(playerId, "Rope");
      ISM.GiveItem(playerId, "SneakersGreenBlack");
      ISM.GiveItem(playerId, "CargoShortsBrightGreen");
    else --(rnd == 4) then--
      ISM.GiveItem(playerId, "Crossbow", true);
      ISM.GiveItem(playerId, "Boltx5_F000");
      ISM.GiveItem(playerId, "PX4");
      ISM.GiveItem(playerId, "acp_45x10_hk");
      ISM.GiveItem(playerId, "FlashlightPistol");
      ISM.GiveItem(playerId, "FlareGun");
      ISM.GiveItem(playerId, "Pile_Flare");
      ISM.GiveItem(playerId, "StowPackOrange");
      ISM.GiveItem(playerId, "Pumpkin");
      ISM.GiveItem(playerId, "BandanaOrange");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "Bandage");
      ISM.GiveItem(playerId, "GrenadeSmokeRedPickup");
      ISM.GiveItem(playerId, "GrenadeSmokeRedPickup");
      ISM.GiveItem(playerId, "ScarfOrange");
      ISM.GiveItem(playerId, "HeadbandOrange");
      ISM.GiveItem(playerId, "Aviators");
      ISM.GiveItem(playerId, "PuffyJacketOrangeWhite");
      ISM.GiveItem(playerId, "MilitaryGlovesBrown");
      ISM.GiveItem(playerId, "Rope");
      ISM.GiveItem(playerId, "SneakersRedBlack");
      ISM.GiveItem(playerId, "TrackPantsOrange");
    --[[elseif (rnd == 5) then
      ISM.GiveItem(playerId, "AKM", true);
      ISM.GiveItem(playerId, "762x30", false, rifleId, "762x30_mag00");
      ISM.GiveItem(playerId, "LaserSight");
      ISM.GiveItem(playerId, "FlashlightRifle");
      ISM.GiveItem(playerId, "ACAW", false);
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "HuntingScope");
      ISM.GiveItem(playerId, "G18Pistol", false);
      ISM.GiveItem(playerId, "9mmx33", false, rifleId, "9mmx33_mag00");
      ISM.GiveItem(playerId, "PistolSilencer");
      ISM.GiveItem(playerId, "FlashlightPistol");
      ISM.GiveItem(playerId, "FannyPackCamo2");
      ISM.GiveItem(playerId, "AdvancedBandage");
      ISM.GiveItem(playerId, "AdvancedBandage");
      ISM.GiveItem(playerId, "AdvancedBandage");
      ISM.GiveItem(playerId, "MilitaryJacketBlack");
      ISM.GiveItem(playerId, "DuffelBagBlack");
      ISM.GiveItem(playerId, "Aviators");
      ISM.GiveItem(playerId, "MilitaryHelmetUrbanCamo1");
      ISM.GiveItem(playerId, "PoliceVestBlack");
      ISM.GiveItem(playerId, "WandererPantsBlack");
      ISM.GiveItem(playerId, "CombatBootsBlack");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
    elseif (rnd == 6) then
      ISM.GiveItem(playerId, "AKMGold", true);
      ISM.GiveItem(playerId, "762x30", false, rifleId, "762x30_mag00");
      ISM.GiveItem(playerId, "LaserSight");
      ISM.GiveItem(playerId, "FlashlightRifle");
      ISM.GiveItem(playerId, "ACAW", false);
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "HuntingScope");
      ISM.GiveItem(playerId, "G18Pistol", false);
      ISM.GiveItem(playerId, "9mmx33", false, rifleId, "9mmx33_mag00");
      ISM.GiveItem(playerId, "PistolSilencer");
      ISM.GiveItem(playerId, "FlashlightPistol");
      ISM.GiveItem(playerId, "FannyPackCamo3");
      ISM.GiveItem(playerId, "AdvancedBandage");
      ISM.GiveItem(playerId, "AdvancedBandage");
      ISM.GiveItem(playerId, "AdvancedBandage");
      ISM.GiveItem(playerId, "MilitaryJacketGreen");
      ISM.GiveItem(playerId, "DuffelBagGreen");
      ISM.GiveItem(playerId, "Aviators");
      ISM.GiveItem(playerId, "MilitaryHelmetGreen");
      ISM.GiveItem(playerId, "PoliceVestBlack");
      ISM.GiveItem(playerId, "WandererPantsBlack");
      ISM.GiveItem(playerId, "CombatBootsBlack");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "762x30");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
    elseif (rnd == 7) then
      ISM.GiveItem(playerId, "AK74U", true);
      ISM.GiveItem(playerId, "545x30", false, rifleId, "545x30_mag00");
      ISM.GiveItem(playerId, "ACAW", false);
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "HuntingScope");
      ISM.GiveItem(playerId, "G18Pistol", false);
      ISM.GiveItem(playerId, "9mmx33", false, rifleId, "9mmx33_mag00");
      ISM.GiveItem(playerId, "PistolSilencer");
      ISM.GiveItem(playerId, "FlashlightPistol");
      ISM.GiveItem(playerId, "FannyPackCamo1");
      ISM.GiveItem(playerId, "AdvancedBandage");
      ISM.GiveItem(playerId, "AdvancedBandage");
      ISM.GiveItem(playerId, "AdvancedBandage");
      ISM.GiveItem(playerId, "MilitaryJacketTan");
      ISM.GiveItem(playerId, "DuffelBagTanCamo1");
      ISM.GiveItem(playerId, "Aviators");
      ISM.GiveItem(playerId, "MilitaryHelmetTan");
      ISM.GiveItem(playerId, "PoliceVestBlack");
      ISM.GiveItem(playerId, "WandererPantsBlack");
      ISM.GiveItem(playerId, "CombatBootsBlack");
      ISM.GiveItem(playerId, "545x30");
      ISM.GiveItem(playerId, "545x30");
      ISM.GiveItem(playerId, "545x30");
      ISM.GiveItem(playerId, "545x30");
      ISM.GiveItem(playerId, "545x30");
      ISM.GiveItem(playerId, "545x30");
      ISM.GiveItem(playerId, "545x30");
      ISM.GiveItem(playerId, "545x30");
      ISM.GiveItem(playerId, "545x30");
      ISM.GiveItem(playerId, "545x30");
      ISM.GiveItem(playerId, "545x30");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
    else
      ISM.GiveItem(playerId, "Bulldog", true);
      ISM.GiveItem(playerId, "STANAGx30", false, rifleId, "stanag_mag00");
      ISM.GiveItem(playerId, "ACAW", false);
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "HuntingScope");
      ISM.GiveItem(playerId, "G18Pistol", false);
      ISM.GiveItem(playerId, "9mmx33", false, rifleId, "9mmx33_mag00");
      ISM.GiveItem(playerId, "PistolSilencer");
      ISM.GiveItem(playerId, "FlashlightPistol");
      ISM.GiveItem(playerId, "FannyPackCamo2");
      ISM.GiveItem(playerId, "AdvancedBandage");
      ISM.GiveItem(playerId, "AdvancedBandage");
      ISM.GiveItem(playerId, "AdvancedBandage");
      ISM.GiveItem(playerId, "MilitaryJacketUrbanCamo1");
      ISM.GiveItem(playerId, "DuffelBagUrbanCamo1");
      ISM.GiveItem(playerId, "Aviators");
      ISM.GiveItem(playerId, "MilitaryHelmetUrbanCamo1");
      ISM.GiveItem(playerId, "PoliceVestBlack");
      ISM.GiveItem(playerId, "WandererPantsBlack");
      ISM.GiveItem(playerId, "CombatBootsBlack");
      ISM.GiveItem(playerId, "STANAGx30");
      ISM.GiveItem(playerId, "STANAGx30");
      ISM.GiveItem(playerId, "STANAGx30");
      ISM.GiveItem(playerId, "STANAGx30");
      ISM.GiveItem(playerId, "STANAGx30");
      ISM.GiveItem(playerId, "STANAGx30");
      ISM.GiveItem(playerId, "STANAGx30");
      ISM.GiveItem(playerId, "STANAGx30");
      ISM.GiveItem(playerId, "STANAGx30");
      ISM.GiveItem(playerId, "STANAGx30");
      ISM.GiveItem(playerId, "STANAGx30");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "9mmx33");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");
      ISM.GiveItem(playerId, "762x5");]]--
      end
    end
  end