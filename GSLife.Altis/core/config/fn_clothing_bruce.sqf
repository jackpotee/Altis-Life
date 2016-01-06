/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Poloshirt Blue",25],
		["U_C_Poloshirt_burgundy","Poloshirt Burgundy",27],
		["U_C_Poloshirt_redwhite","Poloshirt Red/White",15],
		["U_C_Poloshirt_salmon","Poloshirt Salmon",15],
		["U_C_Poloshirt_stripped","Poloshirt stripped",12],
		["U_C_Poloshirt_tricolour","Poloshirt Tricolor",35],
		["U_C_Poor_2","Rag tagged clothes",25],
		["U_IG_Guerilla2_2","Green stripped shirt & Pants",65],
		["U_IG_Guerilla3_1","Brown Jacket & Pants",75],
		["U_IG_Guerilla2_3","The Outback Rangler",120],
		["U_C_HunterBody_grn","The Hunters Look",150],
		["U_C_WorkerCoveralls","Mechanic Coveralls",150],
		["U_OrestesBody","Surfing On Land",110],
		["U_C_Journalist",nil,85],
		["A3L_Suit_Uniform",nil,400],
		["A3L_Bikini_Girl",nil,150],
		["A3L_Dude_Outfit",nil,250],
		["A3L_Farmer_Outfit",nil,50],
		["A3L_Priest_Uniform",nil,50],
		["A3L_Prisoner_Outfit",nil,30],
		["A3L_Worker_Outfit",nil,50],
		["U_C_Polo_Barcelona",nil,120],
		["U_C_Polo_Toulouse",nil,100],
		["U_C_Polo_Civil1",nil,85],
		["fbi_light_uniform",nil,85],
		["fbi_light2_uniform",nil,85],
		["fbi_light3_uniform",nil,85],
		["fbi_light4_uniform",nil,85],
		["U_PMC_RedPlaidShirt_DenimCords",nil,85],
		["U_PMC_BluePlaidShirt_BeigeCords",nil,85],
		["U_007_BIS_Marshall",nil,85]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",10],
			["H_Bandanna_surfer","Surfer Bandanna",10],
			["H_Bandanna_gry","Grey Bandanna",15],
			["H_Bandanna_cbr",nil,16],
			["H_Bandanna_surfer",nil,13],
			["H_Bandanna_khk","Khaki Bandanna",14],
			["H_Bandanna_sgg","Sage Bandanna",16],
			["H_StrawHat","Straw Fedora",22],
			["H_BandMask_blk","Hat & Bandanna",30],
			["H_Booniehat_tan",nil,45],
			["H_Hat_blue",nil,31],
			["H_Hat_brown",nil,27],
			["H_Hat_checker",nil,34],
			["H_Hat_grey",nil,28],
			["H_Hat_tan",nil,26],
			["H_Cap_blu",nil,15],
			["H_Cap_grn",nil,15],
			["H_Cap_grn_BI",nil,15],
			["H_Cap_oli",nil,15],
			["H_Cap_red",nil,15],
			["H_Cap_tan",nil,15]
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
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
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
			["V_Rangemaster_belt",nil,150],
			["V_BandollierB_khk",nil,150],
			["V_BandollierB_cbr",nil,150],
			["V_BandollierB_blk",nil,150],
			["V_BandollierB_oli",nil,150],
			["V_TacVest_khk",nil,250],
			["V_TacVest_brn",nil,250],
			["V_TacVest_blk",nil,250],
			["V_TacVest_camo",nil,250],
			["V_Press_F",nil,500]
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
			["B_Carryall_khk",nil,500]
		];
	};
};