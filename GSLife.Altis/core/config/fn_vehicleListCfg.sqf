#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["sfp_wheelchair",60000],
			["DAR_TahoeEMS",45000],
			["TCG_CVPILBFD",60000],
			["Jonzie_Ambulance",45000],
			["A3L_AmberLamps",60000]			
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",500],
			
			["exxpensive_2cv_base",700],
			
			["Mrshounka_a3_smart_civ_noir",1000],
			["Mrshounka_a3_smart_civ_bleu",1000],
			
			["LandRover_TK_CIV_EP1",1500],
			
			["shounka_nemo_noir",2000],
			["shounka_nemo_bleufonce",2000],
			["shounka_nemo_rouge",2000],
			["shounka_nemo_jaune",2000],
			["shounka_nemo_rose",2000],
			["shounka_nemo_grise",2000],
			["shounka_nemo_violet",2000],
			["shounka_nemo_orange",2000],
			
			["Mrshounka_ducati_p_noir",2500],
			["Mrshounka_ducati_p_bf",2500],
			["Mrshounka_ducati_p_r",2500],
			["Mrshounka_ducati_p_j",2500],
			["Mrshounka_ducati_p_rose",2500],
			["Mrshounka_ducati_p_g",2500],
			["Mrshounka_ducati_p_v",2500],
			["Mrshounka_ducati_p_o",2500],
			
			["Mrshounka_207_noir",2750],
			["Mrshounka_207_bleufonce",2750],
			["Mrshounka_207_rouge",2750],
			["Mrshounka_207_jaune",2750],
			["Mrshounka_207_rose",2750],
			["Mrshounka_207_orange",2750],
			
			["exxpensive_m5_e34_base",3000],
			
			["exxpensive_BMWM3E46_base",3200],
			
			["Mrshounka_bmwm1_civ_noir",3250],
			["Mrshounka_bmwm1_civ_bleufonce",3250],
			["Mrshounka_bmwm1_civ_rouge",3250],
			["Mrshounka_bmwm1_civ_jaune",3250],
			["Mrshounka_bmwm1_civ_rose",3250],
			["Mrshounka_bmwm1_civ_grise",3250],
			["Mrshounka_bmwm1_civ_orange",3250],
			["Mrshounka_bmwm1_civ_violet",3250],
			
			["Mrshounka_Alfa_Romeo_noir",3300],
			["Mrshounka_Alfa_Romeo_bleufonce",3300],
			["Mrshounka_Alfa_Romeo_rouge",3300],
			["Mrshounka_Alfa_Romeo_jaune",3300],
			["Mrshounka_Alfa_Romeo_rose",3300],
			["Mrshounka_Alfa_Romeo_violet",3300],
			["Mrshounka_Alfa_Romeo_orange",3300],
			["Mrshounka_Alfa_Romeo_grise",3300],
			
			["Mrshounka_golfvi_noir",3400],
			["Mrshounka_golfvi_bleufonce",3400],
			["Mrshounka_golfvi_rouge",3400],
			["Mrshounka_golfvi_jaune",3400],
			["Mrshounka_golfvi_rose",3400],
			["Mrshounka_golfvi_orange",3400],
			["Mrshounka_golfvi_violet",3400],
			["Mrshounka_golfvi_grise",3400],
			
			["Mrshounka_a3_ds3_civ_noir",3600],
			["Mrshounka_a3_ds3_civ_bleufonce",3600],
			["Mrshounka_a3_ds3_civ_civ_rouge",3600],
			["Mrshounka_a3_ds3_civ_civ_jaune",3600],
			["Mrshounka_a3_ds3_civ_civ_rose",3600],
			["Mrshounka_a3_ds3_civ_civ_grise",3600],
			["Mrshounka_a3_ds3_civ_civ_violet",3600],
			["Mrshounka_a3_ds3_civ_civ_orange",3600],
			
			["Mrshounka_a3_308_civ_noir",3700],
			["Mrshounka_a3_308_civ_bleufonce",3700],
			["Mrshounka_a3_308_civ_rouge",3700],
			["Mrshounka_a3_308_civ_jaune",3700],
			["Mrshounka_a3_308_civ_rose",3700],
			["Mrshounka_a3_308_civ_grise",3700],
			["Mrshounka_a3_308_civ_violet",3700],
			["Mrshounka_a3_308_civ_orange",3700],
			
			["Mrshounka_a3_308_rcz_noir",3800],  
			["Mrshounka_a3_308_rcz_bleufonce",3800], 
			["Mrshounka_a3_308_rcz_rouge",3800], 
			["Mrshounka_a3_308_rcz_jaune",3800], 
			["Mrshounka_a3_308_rcz_rose",3800],
			["Mrshounka_a3_308_rcz_grise",3800], 
			["Mrshounka_a3_308_rcz_violet",3800], 
			["Mrshounka_a3_308_rcz_orange",3800],
			
			["Mrshounka_c4_p_noir",4000],
			["Mrshounka_c4_p_bleufonce",4000],
			["Mrshounka_c4_p_rouge",4000],
			["Mrshounka_c4_p_jaune",4000],
			["Mrshounka_c4_p_rose",4000],
			["Mrshounka_c4_p_grise",4000],
			["Mrshounka_c4_p_violet",4000],
			["Mrshounka_c4_p_orange",4000],
			
			["Mrshounka_a3_dodge15_civ_noir",5000],
			["Mrshounka_a3_dodge15_civ_bleufonce",5000],
			["Mrshounka_a3_dodge15_civ_rouge",5000],
			["Mrshounka_a3_dodge15_civ_jaune",5000],
			["Mrshounka_a3_dodge15_civ_rose",5000],
			["Mrshounka_a3_dodge15_civ_grise",5000],
			["Mrshounka_a3_dodge15_civ_violet",5000],
			["Mrshounka_a3_dodge15_civ_orange",5000]
			
		];
	};
	
	case "civ_lux":
	{
		_return = 
		[
			["exxpensive_chrysler_300c_base",10000],
			["exxpensive_porsche_panamera_base",56000],
			
			["Mrshounka_cayenne_p_noir",58000],
			["Mrshounka_cayenne_p_bleufonce",58000],
			["Mrshounka_cayenne_p_rouge",58000],
			["Mrshounka_cayenne_p_jaune",58000],
			["Mrshounka_cayenne_p_rose",58000],
			["Mrshounka_cayenne_p_grise",58000],
			["Mrshounka_cayenne_p_violet",58000],
			["Mrshounka_cayenne_p_orange",58000],
			
			["Mrshounka_c63_2015_mat_n",59000],
			["Mrshounka_c63_2015_noir",59000],
			["Mrshounka_c63_2015_bleufonce",59000],
			["Mrshounka_c63_2015_mat_b",59000],
			["Mrshounka_c63_2015_rouge",59000],
			["Mrshounka_c63_2015_jaune",59000],
			["Mrshounka_c63_2015_rose",59000],
			["Mrshounka_c63_2015_grise",59000],
			["Mrshounka_c63_2015_violet",59000],
			["Mrshounka_c63_2015_orange",59000],
			
			["exxpensive_mercedes_sls_base",60000],
			
			["Mrshounka_a3_gtr_civ_noir",65000],
			["Mrshounka_a3_gtr_civ_bleu",65000],
			
			["shounka_f430_spider_noir",70000],
			["shounka_f430_spider_bleufonce",70000], 
			["shounka_f430_spider_rouge",70000], 
			["shounka_f430_spider_jaune",70000], 
			["shounka_f430_spider_rose",70000], 
			["shounka_f430_spider_grise",70000], 
			["shounka_f430_spider_violet",70000], 
			["shounka_f430_spider_orange",70000],
			
			["Mrshounka_agera_p_noir",90000],
			["Mrshounka_agera_p_bleu",90000],
			["Mrshounka_agera_p_jaune",90000],
			
			["exxpensive_bugatti_base",200000]
			
			
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_transport_F",3000],
			["C_Van_01_box_F",5000],
			["I_Truck_02_transport_F",6000],
			["I_Truck_02_covered_F",7000],
			["B_Truck_01_transport_F",15000],
			["O_Truck_03_transport_F",9000],
			["O_Truck_03_covered_F",20000],
			["O_Truck_03_device_F",10000],
			["B_Truck_01_box_F",27000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["I_MRAP_03_F",210000],
			["B_Heli_Light_01_F",325000],
			["I_Heli_Transport_02_F",1000000],
			["shounka_clk_noir",600000],
			["Mrshounka_Alfa_Romeo_civ",2125000],
			["Mrshounka_bmwm6_civ",750000],
			["shounka_a3_rs5_civ",600000],
			["Mrshounka_cayenne_p_noir",2125000],
			["shounka_porsche911",750000]
		];
		if(license_civ_rebel) then
		{
			
		};
	};
	
	case "cop_car":
	{
		_return pushBack
		["C_SUV_01_F",20000];
		_return pushBack
		["cl3_murcielago_police",15000];
		_return pushBack
		["DAR_ExplorerPolice",67500];
		_return pushBack
		["cl3_reventon_clpd",67500];
		_return pushBack
		["Exxpensive_dodge_charger_police",67500];
		_return pushBack
		["DAR_ExplorerPolBase",20000];
		_return pushBack
		["DAR_ImpalaPolice",15000];
		_return pushBack
		["DAR_TahoeFPBLBPD",67500];
		_return pushBack
		["A3L_EvoXFPBLBPD",67500];
		_return pushBack
		["A3L_CVPIFPBLBPD",67500];		
		_return pushBack
		["A3L_TaurusFPBLBPD",20000];
		_return pushBack
		["TCG_CVPIFPBLBSTATE",15000];
		_return pushBack
		["Gurkha_M60",67500];
		
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_MRAP_01_F",30000];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["I_Heli_Transport_02_F",1750000]
		];
	};
	
	case "cop_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
		};
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
			["B_MRAP_01_hmg_F",750000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
