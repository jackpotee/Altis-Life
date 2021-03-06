/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "C_Offroad_01_F": {65};
	case "B_G_Offroad_01_F": {65};
	case "B_Quadbike_01_F": {25};
	case "I_Truck_02_covered_F": {250};
	case "I_Truck_02_transport_F": {200};
	case "C_Hatchback_01_F": {45};
	case "C_Hatchback_01_sport_F": {45};
	case "C_SUV_01_F": {50};
	case "C_Van_01_transport_F": {100};
	case "I_G_Van_01_transport_F": {100};
	case "C_Van_01_box_F": {150};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_Truck_01_box_F": {650};
	case "B_Truck_01_transport_F": {325};
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {58};
	case "B_Heli_Light_01_F": {90};
	case "O_Heli_Light_02_unarmed_F": {210};
	case "I_Heli_Transport_02_F": {375};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "O_Truck_03_transport_F": {285};
	case "O_Truck_03_covered_F": {300};
	case "O_Truck_03_device_F": {350};
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	//MOD
	case "LandRover_TK_CIV_EP1": {65};
	case "LandRover_MG_TK_EP1": {65};
	case "LandRover_ACR": {65};
	case "exxpensive_m5_e34_base": {65};
	case "exxpensive_2cv_base": {45};
	case "cl3_lada_white": {45};
	case "cl3_lada_red": {45};
	case "cl3_golf_mk2_black": {45};
	case "cl3_polo_gti_black": {45};
	case "cl3_civic_vti_black": {45};
	case "DAR_TahoeCivBlack": {100};
	case "DAR_TahoeCivRed": {100};
	case "DAR_TahoeCivBlue": {100};
	case "DAR_TahoeCivSilver": {100};
	case "exxpensive_BMWM3E46_base": {65};
	case "SAL_AudiCivRed": {65};
	case "SAL_AudiCivSilver": {65};
	case "SAL_AudiCivBlack": {65};
	case "cl3_insignia_black": {65};
	case "cl3_range_rover_black": {100};
	case "cl3_SUV_black": {100};
	case "cl3_taurus_black": {65};
	case "exxpensive_chrysler_300c_base": {65};
	case "exxpensive_Audi_q7_base": {100};
	case "exxpensive_jaguar_base": {65};
	case "exxpensive_porsche_panamera_base": {65};
	case "cl3_z4_2008_navy_blue": {65};
	case "cl3_z4_2008_orange": {65};
	case "cl3_z4_2008_purple": {65};
	case "cl3_z4_2008_red": {65};
	case "cl3_z4_2008_silver": {65};
	case "cl3_z4_2008_white": {65};
	case "cl3_z4_2008_yellow": {65};
	case "exxpensive_mercedes_sls_base": {65};
	case "cl3_e63_amg_black": {65};
	case "cl3_carrera_gt_black": {45};
	case "cl3_458_black": {45};
	case "cl3_r8_spyder_black": {45};
	case "cl3_dbs_volante_yellow": {65};
	case "cl3_dbs_volante_burgundy": {65};
	case "cl3_dbs_volante_red": {65};
	case "cl3_dbs_volante_white": {65};
	case "cl3_dbs_volante_black": {65};
	case "exxpensive_bugatti_base": {45};
	case "cl3_reventon_black": {45};
	default {-1};
};