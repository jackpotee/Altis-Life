/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		life_actions = life_actions + [player addAction["Voler un rein",life_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
		// Suicide Bomb
		life_actions = life_actions + [player addAction["Declencher la veste explosive",life_fnc_suicideBomb,"",0,false,false,"",'vest player == "V_HarnessOGL_gry" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
	};
	
	case independent:
	{
        // Kidney operation
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Operer la personne</t>",life_fnc_kidneyoperation,"",1,false,true,"",' playerSide == independent && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];
	};
	
	case west:
	{
		//Lights ON
		life_actions = life_actions + [player addAction["Gyrophare ON",{ [[vehicle player,0.22],"life_fnc_copLights",true,false] spawn BIS_fnc_MP; vehicle player setVariable ["lights",true,true]; },"",0,false,false,"",
		' vehicle player != player && ((typeOf vehicle player) == "C_Offroad_01_F" || (typeOf vehicle player) == "C_SUV_01_F" || (typeOf vehicle player) == "B_MRAP_01_F" || (typeOf vehicle player) == "C_Hatchback_01_F") || (typeOf vehicle player) == "C_Hatchback_01_sport_F" || (typeOf vehicle player) == "B_Heli_Light_01_F" || (typeOf vehicle player) == "B_Heli_Transport_01_F" || (typeOf vehicle player) == "I_Heli_light_03_unarmed_F" || (typeOf vehicle player) == "I_MRAP_03_hmg_F" || (typeOf vehicle player) == "I_MRAP_03_F" ||(typeOf vehicle player) == "B_APC_Wheeled_01_cannon_F" ||(typeOf vehicle player) == "B_MRAP_01_hmg_F"  ||(typeOf vehicle player) == "cl3_murcielago_police" ||(typeOf vehicle player) == "cl3_reventon_clpd" && ((driver vehicle player) == player) && (vehicle player getVariable ["haslights",true]) && !(vehicle player getVariable ["lights",false])']];
		//Lights ON
		life_actions = life_actions + [player addAction["Gyrophare OFF",{ vehicle player setVariable ["lights",false,true]; },"",0,false,false,"",
		' vehicle player != player && ((typeOf vehicle player) == "C_Offroad_01_F" || (typeOf vehicle player) == "C_SUV_01_F" || (typeOf vehicle player) == "B_MRAP_01_F" || (typeOf vehicle player) == "C_Hatchback_01_F") || (typeOf vehicle player) == "C_Hatchback_01_sport_F" || (typeOf vehicle player) == "B_Heli_Light_01_F" || (typeOf vehicle player) == "B_Heli_Transport_01_F" || (typeOf vehicle player) == "I_Heli_light_03_unarmed_F" || (typeOf vehicle player) == "I_MRAP_03_hmg_F" || (typeOf vehicle player) == "I_MRAP_03_F" ||(typeOf vehicle player) == "B_APC_Wheeled_01_cannon_F" ||(typeOf vehicle player) == "B_MRAP_01_hmg_F"  ||(typeOf vehicle player) == "cl3_murcielago_police" ||(typeOf vehicle player) == "cl3_reventon_clpd" && ((driver vehicle player) == player) && (vehicle player getVariable ["lights",false])']];
		
	};
};