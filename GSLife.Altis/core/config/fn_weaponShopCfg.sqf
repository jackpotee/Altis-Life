#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
	
		_content =
		[
			["DDOPP_X26","Taser",450],
			["DDOPP_1Rnd_X26",nil,50],
			["RH_python",nil,7000],
			["RH_6Rnd_357_Mag",nil,60],
			["RH_g17",nil,7000],
			["RH_17Rnd_9x19_g17",nil,60],	
			["RH_M16A4",nil,10000],
			["RH_30Rnd_556x45_M855A1",nil,250]
		];		
		
		if (__GETC__(life_coplevel) >= 2) then {   //Caporal
			_content pushBack ["R3F_M4S90",nil,25000];
			_content pushBack ["R3F_7Rnd_M4S90",nil,100];
			_content pushBack ["hlc_rifle_Colt727",nil,25000];
			_content pushBack ["30Rnd_556x45_Stanag",nil,100];
		};
		
		if (__GETC__(life_coplevel) >= 3) then {   // Sergent
			_content pushBack ["R3F_FRF2",nil,100000];
			_content pushBack ["R3F_10Rnd_762x51_FRF2",nil,60];
			_content pushBack ["RH_M4sbr_b",nil,25000];
			_content pushBack ["RH_M16A6",nil,10000];
			_content pushBack ["RH_30Rnd_68x43_FMJ",nil,250];
		};
		
		if (__GETC__(life_coplevel) >= 4) then {   //Sergent chef
			_content pushBack ["RH_m9",nil,7000];
			_content pushBack ["RH_15Rnd_9x19_M9",nil,60];
			_content pushBack ["R3F_HK416M",nil,10000];
			_content pushBack ["R3F_30Rnd_556x45_HK416",nil,250];	
			_content pushBack ["RH_m110",nil,30000];
			_content pushBack ["RH_20Rnd_762x51_M80A1",nil,30];
		};
		
		if (__GETC__(life_coplevel) >= 5) then {   //major
			_content pushBack ["R3F_Minimi_762",nil,30000];
			_content pushBack ["R3F_100Rnd_762x51_MINIMI",nil,30];
			_content pushBack ["R3F_Minimi_HG",nil,100000];
			_content pushBack ["R3F_Minimi_762_HG",nil,300];
			_content pushBack ["RH_M27IAR",nil,10000];
			_content pushBack ["RH_60Rnd_556x45_M855A1",nil,250];
			_content pushBack ["RH_kimber_nw",nil,7000];
			_content pushBack ["RH_7Rnd_45cal_m1911",nil,60];	
			
		};
		if (__GETC__(life_coplevel) >= 6) then {   //Lieutenant
			_content pushBack ["RH_mp412",nil,30000];
			_content pushBack ["RH_6Rnd_357_Mag",nil,30];
			_content pushBack ["RH_M4m_b",nil,10000];
			_content pushBack ["RH_30Rnd_68x43_FMJ",nil,250];
		};
		
		if (__GETC__(life_coplevel) >= 7) then {   //capitaine
			_content pushBack ["R3F_M107",nil,30000];
			_content pushBack ["R3F_10Rnd_127x99_M107",nil,30];
			_content pushBack ["hlc_rifle_RU556",nil,10000];
			_content pushBack ["hlc_rifle_bcmjack",nil,10000];
			_content pushBack ["hlc_30rnd_556x45_EPR",nil,75];
			_content pushBack ["R3F_HK417L",nil,100000];
			_content pushBack ["R3F_20Rnd_762x51_HK417",nil,300];
			_content pushBack ["R3F_TAC50",nil,100000];
			_content pushBack ["R3F_5Rnd_127x99_TAC50",nil,300];
		};
		if (__GETC__(life_coplevel) >= 8) then {   //commandant
			_content pushBack ["RH_hb_b",nil,10000];
			_content pushBack ["RH_30Rnd_762x35_FMJ",nil,60];
			_content pushBack ["RH_bull",nil,100000];
			_content pushBack ["RH_6Rnd_454_Mag",nil,60];		
			_content pushBack ["R3F_PGM_Hecate_II",nil,30000];
			_content pushBack ["R3F_7Rnd_127x99_PGM",nil,30];
		};
		if (__GETC__(life_coplevel) >= 9) then {   //Colonel
			_content pushBack ["RH_M4_moe_b",nil,25000];
			_content pushBack ["RH_Deagles",nil,100000];
			_content pushBack ["RH_7Rnd_50_AE",nil,60];	
			_content pushBack ["SMG_02_F",nil,7000];
			_content pushBack ["30Rnd_9x21_Mag",nil,60];
		};
		if (__GETC__(life_coplevel) >= 10) then {   //général
			_content pushBack ["RH_Deagleg",nil,100000];
			_content pushBack ["RH_7Rnd_50_AE",nil,60];		
		};
		["Armurerie Gendarmerie", _content];
	};
	
	
	case "cop_equip_Armes":
	{

		_content =
		[
			["optic_Aco_smg",nil,200],
			["optic_ACO_grn",nil,200],
			["optic_Holosight",nil,200],
			["optic_Holosight_smg",nil,200],
			["optic_Arco",nil,200],
			["optic_Hamr",nil,200],
			["optic_MRCO",nil,200],
			["optic_DMS",nil,200],
			["optic_NVS",nil,200],
			["optic_SOS",nil,200],
			["optic_LRPS",nil,200],
			["optic_KHS_blk",nil,200],
			["optic_AMS",nil,200],
			["acc_flashlight",nil,100],
			["acc_pointer_IR",nil,200]

		];
		["Armurerie Gendarmerie access", _content];
	};	

	case "rebel":
	{

		_content =
		[
		
			//pistols
			["hgun_Pistol_heavy_01_F",nil,200],
			["11Rnd_45ACP_Mag",nil,200],
			["RH_m9c",nil,200],
			["RH_15Rnd_9x19_M9",nil,200],
			["RH_cz75",nil,200],
			["RH_16Rnd_9x19_CZ",nil,200],
			["RH_fn57_t",nil,200],
			["RH_20Rnd_57x28_FN",nil,200],		
			["RH_g18",nil,200],
			["RH_19Rnd_9x19_g18",nil,200],
			["RH_m1911",nil,200],
			["RH_7Rnd_45cal_m1911",nil,200],
			["RH_mak",nil,200],
			["RH_8Rnd_9x18_Mak",nil,200],
			["RH_muzi",nil,200],
			["RH_30Rnd_9x19_UZI",nil,200],				
			["RH_mk2",nil,200],
			["RH_10Rnd_22LR_mk2",nil,200],
			["RH_tt33",nil,200],
			["RH_8Rnd_762_tt33",nil,200],		
			["RH_vp70",nil,200],
			["RH_18Rnd_9x19_VP",nil,200],

			["hgun_P07_F",nil,7500],
			["hgun_Pistol_heavy_02_Yorris_F",nil,12000],
			["arifle_SDAR_F",nil,20000],
			["optic_ACO_grn",nil,3500],
			["optic_Holosight",nil,3600],
			["acc_flashlight",nil,1000],
			["optic_Hamr",nil,7500],
			["30Rnd_9x21_Mag",nil,200],
			["20Rnd_556x45_UW_mag",nil,125],
			["30Rnd_556x45_Stanag",nil,300],
			["10Rnd_762x51_Mag",nil,500],
			["30Rnd_65x39_caseless_green",nil,275],
			["6Rnd_45ACP_Cylinder",nil,100],			/* chargeur Zubr. */
			["16Rnd_9x21_Mag",nil,85],					/* chargeur p07	*/
			["optic_SOS",nil,85],						/* viseur SOS	*/
			["acc_pointer_IR",nil,3500],				/* Viseur RCO	*/
			["optic_MRCO",nil,3500],					/* viseur mrco	*/
			["muzzle_snds_L",nil,2500],					/* silencieux p07 */
			["muzzle_snds_H",nil,2500],  				/* silencieux katiba */
						
			
			//fusils
			["hlc_rifle_ak12",nil,200],
			["hlc_30Rnd_545x39_B_AK",nil,200],
			["hlc_rifle_aku12",nil,200],
			["hlc_30Rnd_545x39_B_AK",nil,200],
			["hlc_rifle_akm",nil,200],
			["hlc_30Rnd_762x39_b_ak",nil,200],
			["hlc_rifle_aks74",nil,200],
			["hlc_30Rnd_545x39_B_AK",nil,200],
			["hlc_rifle_RPK12",nil,200],
			["hlc_45Rnd_545x39_t_rpk",nil,200],
			["hlc_rifle_saiga12k",nil,200],
			["hlc_10rnd_12g_buck_S12",nil,100],			
			["ej_ThompsonTactical2",nil,200],
			["Thompson_mag",nil,200],
			["LMG_Mk200_F",nil,200],
			["200Rnd_65x39_cased_Box",nil,100],
			["hlc_rifle_augsrcarb_t",nil,200],
			["hlc_30Rnd_556x45_B_AUG",nil,100],		
			["hlc_rifle_auga3_b",nil,200],
			["hlc_30Rnd_556x45_B_AUG",nil,100],		
			["srifle_DMR_01_F",nil,200],
			["10Rnd_762x54_Mag",nil,100],					
			["arifle_Katiba_F",nil,200],
			["30Rnd_65x39_caseless_green",nil,100],	

			
			//MOD
			
			//ARMES
			["RH_m4",nil,2500],
			["RH_M4_ris",nil,2500],
			["RH_M4_M203",nil,2500],
			
			//SILENCIEUX
			["RH_qdss_nt4",nil,2500],
			["RH_saker",nil,2500],
			//["RH_qdss_nt4b",nil,2500],
			//["RH_sakerb",nil,2500],
			["RH_spr_mbs",nil,2500],
			//////////
			
			//LASERS
			["RH_peq15",nil,2500],
			["RH_peq15_top",nil,2500],
			["RH_peq2",nil,2500],
			["RH_peq2_top",nil,2500],
			//////////
			
			//VISEURS
			["RH_SFM952V_tan",nil,2500],
			["RH_eotech553",nil,2500],
			["RH_compm4s",nil,2500],
			["RH_t1",nil,2500],
			["RH_reflex",nil,2500],
			["RH_Delft",nil,2500],
			["RH_m3lr",nil,2500],
			["RH_ta31rco",nil,2500],
			["RH_ta31rco_2D",nil,2500],
			//////////
			
			//RAILS M4 & M16
			["RH_m4covers_s",nil,2500],
			["RH_m16covers_s",nil,2500],
			["RH_m16covers_f",nil,2500],
			["RH_m4covers_f",nil,2500],
			//////////
		
			
			
			// armes de haut rang mafia
			["srifle_EBR_F",nil,200],
			["20Rnd_762x51_Mag",nil,200],	
			["caf_pkm",nil,200],
			["CAF_100Rnd_762x54_PKM",nil,100],	
			["srifle_GM6_F",nil,200],
			["5Rnd_127x108_Mag",nil,100],	
			
			//
			["srifle_LRR_F",nil,100],
			["7Rnd_408_Mag",nil,200],			
			
			//
			["chakFirst_Drum75_m203GL_skin1",nil,200],
			["chakfirst_762x39_B_Drum75skin1",nil,200]
			
		];
		["Armurerie reb", _content];
	};	
	
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["ItemRadio","Téléphone",350],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["U_Rangemaster",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};


	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"Tu n'as pas de permis de port d'arme!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,7850],
						["hgun_ACPC2_F",nil,8500],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["ItemMap",nil,100],
				["ItemRadio",nil,350],
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles_OPFOR",nil,2000],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
				
			]
		];
	};
};
