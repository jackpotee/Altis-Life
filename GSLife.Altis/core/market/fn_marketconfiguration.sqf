/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
	
	["tabacp", 75, 0, 120, 4, 2, 
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
	["raisinp", 100, 0, 150, 4, 2, 
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
	["raisina", 450, 150, 650, 4, 2, 
		[ 
			["salt_r",1],
			["tabacp",1],
			["raisinp",1]
		] 
	],
	["bois", 66, 0, 120, 4, 4,
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
	["bois_r", 200, 50, 350, 4, 4,
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
	["copper_r", 135, 50, 250, 4, 4,
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
	["glass", 130, 50, 250, 4, 3,
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
	["salt_r", 130, 50, 250, 4, 3,
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
	["cement", 65, 0, 150, 4, 3,
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
	["oilp", 350, 150, 500, 4, 2,
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
	["iron_r", 275, 135, 400, 4, 4,  
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
	["diamondc", 500, 250, 700, 4, 2, 
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
	["piecea", 170, 50, 300, 4, 2, 
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
	["goldbar", 32000, 25000, 45000, 4, 3,
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
	
	["marijuana", 150, 75, 300, 4, 4,   
		[ 
			["turtle",1], 
			["cocainep",1],
			["heroinp",1],
			["methp",1],
			["lsdp",1]
		] 
	],
	["cocainep", 450, 300, 650, 4, 4,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["heroinp",1],
			["methp",1],
			["lsdp",1]
		] 
	],
	["heroinp", 500, 300, 800, 4, 4,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["cocainep",1],
			["methp",1],
			["lsdp",1]
		] 
	],
	["methp", 650, 500, 900, 4, 4,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["cocainep",1],
			["heroinp",1],
			["lsdp",1]
		] 
	],
	["lsdp", 500, 350, 750, 4, 4,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["cocainep",1],
			["heroinp",1],
			["methp",1]
		] 
	],
	["turtle", 750, 500, 1000, 4, 4,  
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