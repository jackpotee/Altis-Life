#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 0.10; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
life_sitting = false;
life_battery = 75;

//Persistent Saving
__CONST__(life_save_civ,true); //Save weapons for civs?
__CONST__(life_save_yinv,true); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,250); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,3); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,300000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,40000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,false); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,10); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,350);
__CONST__(life_impound_boat,250);
__CONST__(life_impound_air,850);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 20000; //Starting Bank Money
		life_paycheck = 25; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 10000; //Starting Bank Money
		//life_paycheck = 0; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 15000;
		life_paycheck = 50;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = [""];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_hache",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_piecea",
	"life_inv_methu",
	"life_inv_methp",
	"life_inv_lsdu",
	"life_inv_lsdp",
	"life_inv_tabacu",
	"life_inv_tabacp",
	"life_inv_raisinu",
	"life_inv_raisinp",
	"life_inv_raisina",
	"life_inv_bois",
	"life_inv_boisr",
	// battery
	"life_inv_battery",
	"life_inv_kidney",
	"life_inv_scalpel",
	"life_inv_gpstracker"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_bois","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_meth","civ"],
	["license_civ_lsd","civ"],
	["license_civ_tabac","civ"],
	["license_civ_raisin","civ"],
	["license_civ_raisina","civ"],
	["license_civ_rebel1","civ"],
	["license_civ_rebel2","civ"],
	["license_civ_rebel3","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",5500],["cocaine",1500],["cocainep",7600],["marijuana",3750],["turtle",5500],["blastingcharge",10000],["boltcutter",500],["methu",400],["methp",4500],["lsdu",400],["lsdp",3500],["kidney",5000]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",3],
	["heroinu",300],
	["heroinp",500],
	["salema",20],
	["ornate",17],
	["mackerel",35],
	["tuna",177],
	["mullet",55],
	["catshark",60],
	["rabbit",8],
	["oilp",350],
	["turtle",750],
	["water",1],
	["coffee",2],
	["donuts",5],
	["marijuana",150],
	["tbacon",8],
	["lockpick",1000],
	["hache",30],
	["pickaxe",30],
	["redgull",2],
	["peach",3],
	["cocaine",450],
	["cocainep",800],
	["diamond",275],
	["diamondc",500],
	["iron_r",275],
	["copper_r",135],
	["salt_r",130],
	["glass",130],
	["fuelF",150],
	// Battery
	["battery",15],
	["piecea",170],
	["spikeStrip",20],
	["cement",65],
	["goldbar",32000],
	["methu",62],
	["methp",650],
	["lsdu",50],
	["lsdp",500],
	["tabacu",5],
	["tabacp",75],
	["raisinu",5],
	["raisinp",100],
	["raisina",450],
	["bois",66],
	["bois_r",200],
	["kidney",5000],
	["scalpel",2500]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",3],
	["rabbit",8],
	["salema",55],
	["ornate",50],
	["mackerel",66],
	["tuna",200],
	["mullet",70],
	["catshark",80],
	["water",1],
	["turtlesoup",225],
	["donuts",5],
	["coffee",2],
	["tbacon",8],
	["lockpick",1000],
	// Battery
	["battery",15],
	["pickaxe",30],
	["hache",30],
	["redgull",3],
	["fuelF",50],
	["peach",3],
	["spikeStrip",20],
	["blastingcharge",15000],
	["defusekit",25],
	["storagesmall",300],
	["storagebig",600],
	["kidney",5000],
	["scalpel",20000],
	["gpstracker",20]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices = [];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
			["B_Quadbike_01_F",1375],
			["exxpensive_2cv_base",1925],
			["cl3_lada_white", 2200],
			["cl3_lada_red", 2200],
			["LandRover_TK_CIV_EP1",4125],	
			["cl3_golf_mk2_blue", 6600],
			["cl3_golf_mk2_black", 6600],
			["cl3_golf_mk2_yellow", 6600],
			["cl3_golf_mk2_white", 6600],
			["cl3_golf_mk2_red", 6600],
			["cl3_civic_vti_red", 7560],
			["cl3_civic_vti_black", 7560],
			["cl3_civic_vti_white", 7560],
			["exxpensive_m5_e34_base",9900],
			["exxpensive_BMWM3E46_base",11000],
			["SAL_AudiCivRed", 12100],
			["SAL_AudiCivSilver", 12100],
			["SAL_AudiCivBlack", 12100],
			["cl3_insignia_white", 14000],
			["cl3_insignia_black", 14000],
			["cl3_insignia_silver", 14000],
			["cl3_taurus_black", 14960],
			["cl3_taurus_yellow", 14960],
			["cl3_taurus_orange", 14960],
			["cl3_taurus_white", 14960],
			["cl3_range_rover_black", 17600],
			["cl3_range_rover_white", 17600],
			["exxpensive_chrysler_300c_base",25000],
			["exxpensive_Audi_q7_base",31790],
			["cl3_e63_amg_black", 82500],
			["cl3_e63_amg_red", 82500],
			["cl3_e63_amg_white", 82500],
			["cl3_e63_amg_silver", 82500],
			["cl3_dbs_volante_yellow", 121000],
			["cl3_dbs_volante_burgundy", 121000],
			["cl3_dbs_volante_red", 121000],
			["cl3_dbs_volante_white", 121000],
			["cl3_dbs_volante_black", 121000],
			["exxpensive_porsche_panamera_base",154000],
			["exxpensive_mercedes_sls_base",165000],
			["exxpensive_jaguar_base",170500],
			["cl3_carrera_gt_babyblue", 209000],
			["cl3_carrera_gt_white", 209000],
			["cl3_carrera_gt_orange", 209000],
			["cl3_carrera_gt_black", 209000],
			["cl3_carrera_gt_red", 209000],
			["cl3_458_flame", 264000],
			["cl3_458_yellow", 264000],
			["cl3_458_red", 264000],
			["cl3_458_black", 264000],
			["cl3_458_white", 264000],
			["cl3_458_silver", 264000],
			["cl3_murcielago_black", 330000],
			["cl3_murcielago_blue", 330000],
			["cl3_murcielago_orange", 330000],
			["cl3_murcielago_red", 330000],
			["cl3_murcielago_white", 330000],
			["cl3_murcielago_yellow", 330000],
			["cl3_reventon_white", 390500],
			["cl3_reventon_green", 390500],
		    ["cl3_reventon_light_blue", 390500],
			["cl3_reventon_light_yellow", 390500],
			["cl3_reventon_lime", 390500],
			["cl3_reventon_orange", 390500],
		    ["cl3_reventon_red", 390500],
			["exxpensive_bugatti_base",550000],
			["C_Van_01_transport_F",8250],
			["C_Van_01_box_F",13750],
			["I_Truck_02_transport_F",19250],
			["I_Truck_02_covered_F",19250],
			["B_Truck_01_transport_F",41250],
			["O_Truck_03_transport_F",24750],
			["O_Truck_03_covered_F",55000],
			["O_Truck_03_device_F",27500],
			["B_Truck_01_box_F",74250]
			
];
__CONST__(life_garage_sell,life_garage_sell);