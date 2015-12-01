/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,1000],
			["U_IG_Guerilla2_1",nil,1250],
			["U_I_G_Story_Protagonist_F",nil,1500],
			["U_I_G_resistanceLeader_F",nil,2500],
			["U_O_SpecopsUniform_ocamo",nil,4500],
			["U_IG_leader","Guerilla Leader",7340],
			["U_B_CTRG_1",nil,3500],
			["U_B_CTRG_2",nil,3500],
			["U_B_CTRG_3",nil,3500],
			["U_B_survival_uniform",nil,3650],
			["U_MillerBody",nil,3800],
			["U_I_CombatUniform",nil,3700],
			["U_I_CombatUniform_tshirt",nil,3750],
			["U_IG_Guerilla1_1",nil,5000],
			["U_I_GhillieSuit",nil,10000],
			["U_O_GhillieSuit",nil,10000],
			["U_O_PilotCoveralls",nil,20000]
			
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_Shemag_khk",nil,800],
			["H_Beret_blk",nil,800],
			["H_Watchcap_blk",nil,900],
			["H_Watchcap_khk",nil,900],
			["H_Watchcap_camo",nil,900],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_Bandanna_camo",nil,650],
			["H_PilotHelmetFighter_O",nil,15000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Bandanna_aviator",nil,50],
			["G_Bandanna_beast",nil,50],
			["G_Bandanna_tan",nil,50],
			["G_Bandanna_sport",nil,50],
			["G_Bandanna_blk",nil,50],
			["G_Bandanna_oli",nil,50],
			["G_Bandanna_shades",nil,50],
			["G_Squares",nil,10],
			["G_Lady_Mirror",nil,150],
			["G_Aviator",nil,100],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_Rangemaster_belt",nil,1500],
			["V_BandollierB_khk",nil,1500],
			["V_BandollierB_blk",nil,1500],
			["V_BandollierB_oli",nil,1500],
			["V_BandollierB_cbr",nil,1500],
			["V_TacVest_khk",nil,2500],
			["V_TacVest_blk",nil,2500],
			["V_TacVest_camo",nil,2500],
			["V_HarnessO_brn",nil,7500],
			["V_HarnessOGL_gry","Veste Explosive",350000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_ocamo",nil,5000],
			["B_Carryall_oucamo",nil,5000],
			["B_Carryall_khk",nil,5000],
			["B_Parachute","Parachute",5000]
		];
	};
};