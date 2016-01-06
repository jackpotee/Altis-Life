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
			["A3L_Suit_Uniform",nil,400],
			["U_PMC_CombatUniformRS_SSGPBB",nil,150],
			["U_PMC_CombatUniformRS_SSBPBB",nil,150],
			["U_PMC_CombatUniformRS_IndPBSBB",nil,150],
			["U_PMC_CombatUniformRS_GSSPBB",nil,150],
			["U_PMC_CombatUniformRS_GSBPBB",nil,150],
			["U_PMC_CombatUniformRS_BSSPSB",nil,150],
			["U_PMC_CombatUniformRS_BSSPBB",nil,150],
			["U_PMC_CombatUniformRS_ChckP_BPBB",nil,150],
			["U_PMC_CombatUniformRS_ChckLR_SPBB",nil,150],
			["U_PMC_CombatUniformRS_ChckLB_GPBB",nil,150],
			["U_PMC_CombatUniformRS_ChckDBS_GPSB",nil,150],
			["U_PMC_CombatUniformRS_SSGPSB",nil,150],
			["U_PMC_CombatUniformRS_BSGPBB",nil,150],
			["U_PMC_IndUniformLS_YSBPBB",nil,150],
			["U_PMC_IndUniformLS_GSBPBB",nil,150],
			["U_PMC_IndUniformLS_BSYPTB",nil,150],
			["U_PMC_IndUniformLS_TSBPTB",nil,150],
			["U_PMC_IndUniformLS_BSTPTB",nil,150],
			["U_PMC_IndUniformLS_GSTPTB",nil,150],
			["U_PMC_IndUniformLS_TSTPTB",nil,150],
			["U_PMC_IndUniformLS_BSBPBB",nil,150],
			["U_PMC_IndUniformRS_TSBPTB",nil,150],
			["U_O_PilotCoveralls",nil,150]
			
		];
	};
	
	//Hats
	case 1:
	{
		[
			["R3F_Bonnet",nil,30],
			["H_Booniehat_rgr",nil,35],
			["Kio_Capital_Hat",nil,50]
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
			["G_Combat",nil,55],
			["Masque_Wolfv2",nil,55],
			["Masque_Unic",nil,55],
			["Masque_Lion",nil,55],
			["Masque_Hockey",nil,55],
			["Masque_Anonymous",nil,55]

		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_PlateCarrier1_PMC_coyote",nil,150],
			["V_PlateCarrier1_PMC_rgr",nil,150],
			["V_PlateCarrier1_PMC_khki",nil,150],
			["V_PlateCarrier1_PMC_blk",nil,150]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,250],
			["B_Kitbag_mcamo",nil,450],
			["B_TacticalPack_oli",nil,350],
			["B_FieldPack_ocamo",nil,300],
			["B_Bergen_sgg",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Carryall_oli",nil,500],
			["B_Carryall_ocamo",nil,500],
			["B_Carryall_oucamo",nil,500],
			["B_Carryall_khk",nil,500],
			["B_Parachute","Parachute",500]
		];
	};
};