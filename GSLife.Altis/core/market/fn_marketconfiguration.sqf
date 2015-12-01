/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
	
	["tabacp", 120, 0, 250, 4, 2, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["raisinp",1],
			["diamondc",1]
		] 
	],
	["raisinp", 900, 450, 1050, 4, 2, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["tabacp",1],
			["diamondc",1]
		] 
	],
	["raisina", 3150, 1500, 3950, 4, 2, 
		[ 
			["salt_r",1],
			["tabacp",1],
			["raisinp",1]
		] 
	],
	["bois", 500, 0, 1200, 4, 4,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["copper_r",1],
			["piecea",1],
			["bois_r",1]
		] 
	],
	["bois_r", 1750, 500, 2750, 4, 4,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["copper_r",1],
			["piecea",1],
			["bois",1]
		] 
	],
	["copper_r", 1500, 500, 3000, 4, 4,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["piecea",1],
			["bois",1],
			["bois_r",1]
		] 
	],
	["glass", 1450, 750, 3500, 4, 3,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["piecea",1],
			["bois",1],
			["bois_r",1]
		] 
	],
	["salt_r", 1650, 850, 3700, 4, 3,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1],
			["piecea",1],
			["bois",1],
			["bois_r",1]
		] 
	],
	["cement", 1950, 1000, 4000, 4, 3,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["piecea",1],
			["bois",1],
			["bois_r",1]
		] 
	],
	["oilp", 3200, 1600, 5200, 4, 2,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["piecea",1],
			["bois",1],
			["bois_r",1]
		]
	],
	["iron_r", 3200, 1600, 5200, 4, 4,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["piecea",1],
			["bois",1],
			["bois_r",1]
		] 
	],
	["diamondc", 2300, 1000, 4000, 4, 2, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["piecea",1],
			["bois",1],
			["bois_r",1]
		] 
	],
	["piecea", 750, 350, 1200, 4, 2, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["diamondc",1],
			["bois",1],
			["bois_r",1]
		] 
	],
	["goldbar", 75000, 60000, 85000, 4, 3,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["piecea",1],
			["bois",1],
			["bois_r",1]
		] 
	],
/////////////////////////illigal
	
	["marijuana", 3750, 2000, 6000, 4, 4,   
		[ 
			["turtle",1], 
			["cocainep",1],
			["heroinp",1],
			["methp",1],
			["lsdp",1]
		] 
	],
	["cocainep", 7600, 5600, 12000, 4, 4,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["heroinp",1],
			["methp",1],
			["lsdp",1]
		] 
	],
	["heroinp", 5500, 3000, 12000, 4, 4,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["cocainep",1],
			["methp",1],
			["lsdp",1]
		] 
	],
	["methp", 4500, 2000, 12000, 4, 4,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["cocainep",1],
			["heroinp",1],
			["lsdp",1]
		] 
	],
	["lsdp", 3500, 1750, 12000, 4, 4,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["cocainep",1],
			["heroinp",1],
			["methp",1]
		] 
	],
	["turtle", 5500, 3500,12000, 4, 4,  
		[ 
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1],
			["methp",1],
			["lsdp",1]
		] 
	]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

//SYNC PRICES WITH SERVER IF EMPTY
if(isNil("life_market_prices")) then
{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Les prix du marché ont été généré!";
};