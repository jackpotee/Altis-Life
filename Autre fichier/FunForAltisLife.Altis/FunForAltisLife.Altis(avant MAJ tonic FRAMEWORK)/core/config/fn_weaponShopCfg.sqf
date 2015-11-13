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
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Shop",
					[
						["DDOPP_X26","Pistolet Taser",100],
						["DDOPP_1Rnd_X26","Munition Pistolet Taser",5],	
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["HandGrenade_Stone","Grenade Flash",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ItemRadio","Téléphone",350],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};
		};
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
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MX_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["HandGrenade_Stone","Flashbang",1700],
						["arifle_MXC_F",nil,30000],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"Tu n'as pas la licence rebelle!"};
			default
			{
				["Arme Rebelle",
					[
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
						
						//MOD
						
						//ARMES
						["RH_m4",nil,2500],
						["RH_M4_ris",nil,2500],
						["RH_M4_M203",nil,2500],
						["RH_M4sbr",nil,2500],
						
						//SILENCIEUX
						["RH_qdss_nt4",nil,2500],
						["RH_saker",nil,2500],
						["RH_qdss_nt4b",nil,2500],
						["RH_sakerb",nil,2500],
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
						["RH_m4covers_f",nil,2500]
						//////////
					]
				];
			};
		};
	};
	
	case "rebel1":			//grade 1 rebelle
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"Tu n'as pas la licence Rebelle!"};
			case (!license_civ_rebel1): {"Tu n'as pas l'entrainement rebelle 1!"};
			default
			{
				["Arme Rebelle Grade 1",
					[
						["hgun_ACPC2_F",nil,10500],
						["srifle_EBR_F",nil,50000],
						["9Rnd_45ACP_Mag",nil,85],					/* chargeur ACPC2	*/
						["20Rnd_762x51_Mag",nil,125],				/* chargeur mk18 */
						["optic_LRPS",nil,5000],					/* viseur lrps	*/
						["muzzle_snds_acp",nil,2500],				/* silencieux ACPC2 */
						["muzzle_snds_B",nil,2500],					/* silencieux mk18 */
						["SmokeShell",nil,2000],
						["HandGrenade_Stone","Grenade Flash",3000],
						["HandGrenade",nil,3000],
						
						//MOD
					
						//ARMES 
						["arifle_mas_aks74u",nil,35000],
						["arifle_mas_ak_74m",nil,50000], 
						["arifle_mas_m70",nil,50000],
						["arifle_mas_ak_74m_sf",nil,70000], 
						["LMG_mas_rpk_F",nil,150000],
						["30Rnd_mas_545x39_mag",nil,250],
						["30Rnd_mas_762x39_mag",nil,250],
						["muzzle_mas_snds_AK",nil,3000],
						["optic_mas_pso",nil,3000],
						["optic_mas_pso_nv",nil,3000], 
						["optic_mas_pso_eo",nil,3000], 
						["optic_mas_pso_nv_eo",nil,3000], 
						["optic_mas_acog",nil,3000], 
						["optic_mas_acog_eo",nil,3000], 
						["optic_mas_acog_rd",nil,3000], 
						["optic_mas_aim",nil,3000], 
						["optic_mas_term",nil,3000],
						["optic_Nightstalker",nil,3000],
						["optic_mas_Holosight_blk",nil,3000], 
						["optic_mas_Arco_blk",nil,3000],
						["optic_mas_DMS",nil,3000],
						["arifle_mas_ak_74m_c",nil,50000],
						["arifle_mas_ak_74m_sf_c",nil,70000],
						["optic_mas_acog_c",nil,3000], 
						["optic_mas_acog_eo_c",nil,3000], 
						["optic_mas_acog_rd_c",nil,3000], 
						["optic_mas_DMS_c",nil,3000], 
						["optic_mas_aim_c",nil,3000],
						["optic_mas_Holosight_camo",nil,3000], 
						["optic_mas_Arco_camo",nil,3000], 
						["optic_mas_Hamr_camo",nil,3000], 
						["optic_mas_Aco_camo",nil,3000], 
						["optic_mas_ACO_grn_camo",nil,3000], 
						["optic_mas_MRCO_camo",nil,3000],
						["optic_mas_pso_c",nil,3000],
						["optic_mas_pso_nv_c",nil,3000], 
						["optic_mas_pso_eo_c",nil,3000], 
						["optic_mas_pso_nv_eo_c",nil,3000]
					]
				];
			};
		};
	};
	
	case "rebel2":			//grade 2 rebelle
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"Tu n'as pas la licence Rebelle!"};
			case (!license_civ_rebel1): {"Tu n'as pas l'entrainement rebelle 1!"};
			case (!license_civ_rebel2): {"Tu n'as pas l'entrainement rebelle 2!"};
			default
			{
				["Arme Rebelle Grade 2",
					[
						["LMG_Mk200_F",nil,250000],
						["200Rnd_65x39_cased_Box",nil,250],		/* chargeur mk200  */
						["srifle_LRR_LRPS_F",nil,250000],
						["7Rnd_408_Mag",nil,250],				/* chargeur LRR ( sniper ) */
						["srifle_mas_m91",nil,250000],
						["srifle_mas_svd",nil,250000],
						["10Rnd_mas_762x54_mag",nil,250],	
						["srifle_mas_ksvk",nil,250000],
						["5Rnd_mas_127x108_mag",nil,250],
						["5Rnd_127x108_Mag",nil,250],
						["optic_LRPS",nil,5000],
						["optic_NVS",nil,5000],				/* viseur NVS nightvision */
						
						//MOD
						["arifle_mas_m1014",nil,5000],
						["7Rnd_mas_12Gauge_Slug",nil,250],	
						
						["LMG_mas_m240_F",nil,5000],
						["LMG_mas_mk48_F",nil,5000],
						["150Rnd_762x51_Box",nil,500],	
						
						["srifle_mas_m107",nil,5000],	
						["5Rnd_mas_127x99_Stanag",nil,250],
						["muzzle_mas_snds_SV",nil,2500],							
						
						["arifle_mas_mp5",nil,5000],	
						["30Rnd_9x21_Mag",nil,5000],
						["muzzle_mas_snds_C",nil,2500],	
						
						["srifle_mas_m24",nil,5000],	
						["5Rnd_mas_762x51_Stanag",nil,250],	
						
						["srifle_mas_sr25",nil,5000],	
						["20Rnd_762x51_Mag",nil,125],
						["muzzle_mas_snds_SM",nil,2500]	
						
					]
				];
			};
		};
	};
	
	case "rebel3":			//grade 3 rebelle
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"Tu n'as pas la licence Rebelle!"};
			case (!license_civ_rebel1): {"Tu n'as pas l'entrainement rebelle 1!"};
			case (!license_civ_rebel2): {"Tu n'as pas l'entrainement rebelle 2!"};
			case (!license_civ_rebel3): {"Tu n'as pas l'entrainement rebelle 3!"};
			default
			{
				["Arme Rebelle Grade 3",
					[
						["launch_NLAW_F",nil,500000],
						["launch_RPG32_F",nil,500000],
						["NLAW_F",nil,75000],
						["RPG32_F",nil,75000],
						["RPG32_HE_F",nil,80000]
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
				["Laserdesignator",nil,350],
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
