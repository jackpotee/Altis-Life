/*

	Some random and dynamical stuff for market

*/

private["_rand","_modifier","_price", "_globalchange","_defaultprice","_shortname","_difference"];

_rand = [0,200] call life_fnc_randomRound; //0-200

/*

	HINWEIS: obige Zahl in random erhöhen, um alle ereignisse seltener zu machen!
	
*/

diag_log "[MARKET] marketChange called.";

switch(true) do
{
	case (_rand <= 40): //40% default market change value (strong version)
	{
		{
			if(random(10) <= 4) then //Random for each resource
			{
				/*_price = _x select 1;
				_globalchange = _x select 2;*/
				
				_modifier = [-20,20] call life_fnc_randomRound; //Verkaufte/Gekaufte Items
				/*_modifier = _price * _modifier;
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				life_market_prices set [_forEachIndex, [_x select 0, _price, _globalchange, _modifier] ];*/
				
				if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};
			};
		}
		foreach life_market_prices;
	};
	case (_rand <= 46): //6% Drogenpreis erhöhen
	{
		[[3,"Un trafique de drogue démantelé à Athira! Les experts suggèrent des augmentations de prix extrêmes!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["methp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		["lsdp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		
		diag_log "+Market+ Event drugp";
	};
	case (_rand <= 52): //6% Ölpreis erhöhen
	{
		[[3,"Avant la côte rebelles, un pétrolier est coulé! Les militants des droits des animaux s'inquiètent pour les tortues et l'or noir se fait rare.."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["oilp", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["turtle", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		
		diag_log "+Market+ Event oilp";
	};
	case (_rand <= 58): //6% Eisenpreis + zementpreis + glaspreis erhöhen
	{
		[[3,"Le maire envisage la construction d'une antenne téléphonique! Les experts du marché indiquent une forte hausse des prix du fer, ciment et du verre!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["cement", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["iron_r", [20,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["glass", [25,35] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event wcc";
	};
	case (_rand <= 64): //6% Goldpreis sinkt
	{
		[[3,"Les investisseurs perdent confiance dans l'or!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["goldbar", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell;
		["diamondc", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		
		diag_log "+Market+ Event goldm";
	};
	case (_rand <= 70): //6% Kupfer/Silber erhöht sich
	{
		[[3,"L'industrie électronique a besoin de métaux précieux!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["copper_r", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 76): //6% Goldpreis erhöht sich
	{
		[[3,"Les investisseurs perdent confiance dans les diamants!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["goldbar", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["diamondc", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell;
		
		diag_log "+Market+ Event goldp";
	};
	case (_rand <= 82): //6% Drogenpreis niedriger
	{
		[[3,"Le marché de la drogue inondée par les drogues synthétique!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell;
		["methp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell;
		["lsdp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell;		
		["salt_r", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		
		diag_log "+Market+ Event drugm";
	};
	case (_rand <= 88): //10% Schildkröten höher
	{
		[[3,"Découverte! Les tortues comme un nouveau médicament!? Les militants des droits des animaux sont concernés!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["turtle", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		
		diag_log "+Market+ Event turtlep";
	};
	case (_rand <= 94): //6% oil höher
	{
		[[3,"Des chercheurs découvrent un moyen de produire de l'huile de diamant!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["oilp", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["diamondc", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell;
		
		diag_log "+Market+ Event turtlep";
	};
	case (_rand <= 97): //3% alles höher
	{
		[[3,"La Bourse sort de la crise! Les prix monte !"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["turtle", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["heroinp", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["cocainep", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["marijuana", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["methp", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		["lsdp", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		["goldbar", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["diamondc", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["iron_r", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["oilp", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["cement", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["salt_r", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["glass", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["copper_r", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		["piecea", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 		
		
		diag_log "+Market+ Event turtlep";
	};
	case (_rand <= 100): //3% alles sinkt
	{
		[[3,"La Bourse est en crise! Les prix baissent fortement!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["turtle", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["methp", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell;
		["lsdp", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell;		
		["heroinp", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocainep", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["marijuana", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["goldbar", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["diamondc", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["iron_r", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["oilp", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["cement", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["salt_r", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["glass", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["copper_r", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["piecea", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell;
		
		diag_log "+Market+ Event turtlep";
	};
	default //market change: default version
	{
		//diag_log format["[MARKET] marketChange did nothing. Rand=%1", _rand];
		{
			//Get default price
			_defaultprice = 0;
			_shortname = _x select 0;
			_price = _x select 1;
			_globalchange = _x select 2;
		
			{
				if((_x select 0) == _shortname) exitWith
				{
					_defaultprice = _x select 1;
				};
			}
			foreach life_market_resources;
			
			if(_defaultprice > 0) then
			{
			
				//Get difference
				_difference = _defaultprice - _price; //Defaultprice - current price
			
				_modifier = _difference * (random 0.4);
				_modifier = round _modifier;
			
				//Protecting hard caps
				/*if( _modifier < -700) then {_modifier = -700;};
				if( _modifier > 700) then {_modifier = 700;};*/
			
				//_modifier = [-15,25] call life_fnc_randomRound; //Verkaufte/Gekaufte Items
				
				/*if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};*/
				
				diag_log format["+Market+ Correcting market value of %1 from %2 to %3 by %4", _shortname, _price, (_price + _modifier), _modifier];
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				
				
				//New price arr
				life_market_prices set [_forEachIndex, [_shortname, _price,_globalchange,_modifier] ]; //set raw values
			
			}
			else
			{
				diag_log format["+Market+ Cannot correct market value of %1", _shortname];
			};
		}
		foreach life_market_prices;
	};
};

publicVariable "life_market_prices";