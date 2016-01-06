/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
			case 2: {_color = "White";};
			case 3: {_color = "Blue";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "Black"};
			case 7: {_color = "Black"};
			case 8: {_color = "Taxi"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Cop"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dark Red";};
			case 1: {_color = "Black";};
			case 2: {_color = "Silver";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Cop";};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brown"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Black"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Red"};
			case 5: {_color = "White"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sheriff"};
			case 1: {_color = "Black"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "EMS White"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "EMS White"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
			case 1: {_color = "Black"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	
	//MOD
	
	case "exxpensive_porsche_911_base":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Jaune"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Vert"};
			case 5: {_color = "Gris"};
			case 6: {_color = "Bleu"};
			case 7: {_color = "Blanc"};
		};
	};
	
	case "exxpensive_chrysler_300c_base":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Jaune"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Vert"};
			case 5: {_color = "Gris"};
			case 6: {_color = "Bleu"};
			case 7: {_color = "Blanc"};
		};
	};
	
	case "exxpensive_mercedes_sls_base":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Jaune"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Vert"};
			case 5: {_color = "Gris"};
			case 6: {_color = "Bleu"};
			case 7: {_color = "Blanc"};
		};
	};
	
	case "exxpensive_jaguar_base":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Jaune"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Vert"};
			case 5: {_color = "Gris"};
			case 6: {_color = "Bleu"};
			case 7: {_color = "Blanc"};
		};
	};
	
	case "exxpensive_bugatti_base":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Jaune"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Vert"};
			case 5: {_color = "Gris"};
			case 6: {_color = "Bleu"};
			case 7: {_color = "Blanc"};
		};
	};
	
	case "exxpensive_m5_e34_base":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Jaune"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Vert"};
			case 5: {_color = "Gris"};
			case 6: {_color = "Bleu"};
			case 7: {_color = "Blanc"};
		};
	};
	
	case "exxpensive_2cv_base":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Jaune"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Vert"};
			case 5: {_color = "Gris"};
			case 6: {_color = "Bleu"};
			case 7: {_color = "Blanc"};
		};
	};
	
	case "exxpensive_BMWM3E46_base":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Jaune"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Vert"};
			case 5: {_color = "Gris"};
			case 6: {_color = "Bleu"};
			case 7: {_color = "Blanc"};
		};
	};
	
	case "ford_raptor_base":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Jaune"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Vert"};
			case 5: {_color = "Gris"};
			case 6: {_color = "Bleu"};
			case 7: {_color = "Blanc"};
		};
	};
	
	case "exxpensive_porsche_panamera_base":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Jaune"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Vert"};
			case 5: {_color = "Gris"};
			case 6: {_color = "Bleu"};
			case 7: {_color = "Blanc"};
		};
	};
	
	
	case "cl3_golf_mk2_black";
	case "cl3_civic_vti_black";
	case "cl3_insignia_black";
	case "cl3_range_rover_black";
	case "cl3_taurus_black";	
	case "cl3_e63_amg_black";
	case "cl3_dbs_volante_black";
	case "cl3_carrera_gt_black";
	case "cl3_458_black";	
	case "cl3_r8_spyder_black";	
	case "cl3_murcielago_black";	
	case "cl3_reventon_black":	
	{
		switch (_index) do
		{
			case 0: {_color = "noir"};
			case 1: {_color = "jaune"};
			case 2: {_color = "bleu"};
			case 3: {_color = "rouge"};
			case 4: {_color = "vert"};
			case 5: {_color = "gris"};
			case 6: {_color = "orange"};
			case 7: {_color = "violet"};
			case 8: {_color = "silver"};
			case 9: {_color = "blanc"};
		};
	};
	
	case "SAL_AudiCiv":
	{
		switch (_index) do
		{
			case 0: {_color = "rouge"};
			case 1: {_color = "silver"};
			case 2: {_color = "noir"};
		};
	};	
	
	
	case "exxpensive_Audi_q7_base":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Jaune"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Vert"};
			case 5: {_color = "Gris"};
			case 6: {_color = "Bleu"};
			case 7: {_color = "Blanc"};
		};
	};
};

_color;