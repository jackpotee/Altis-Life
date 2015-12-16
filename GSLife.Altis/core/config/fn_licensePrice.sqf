/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {1200}; //Drivers License cost
	case "boat": {600}; //Boating license cost
	case "pilot": {15000}; //Pilot/air license cost
	case "gun": {600}; //Firearm/gun license cost
	case "dive": {200}; //Diving license cost
	case "oil": {7400}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {18000}; //Heroin processing license cost
	case "marijuana": {6000}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {750000}; //Rebel license cost
	case "truck": {3000}; //Truck license cost
	case "diamond": {17000};
	case "bois": {5200};
	case "salt": {13000};
	case "cocaine": {13875};
	case "sand": {12500};
	case "iron": {11500};
	case "copper": {9000};
	case "cement": {3000};
	case "mair": {150};
	case "home": {125000};
	case "meth": {24600};
	case "lsd": {12050};
	case "tabac": {12000};
	case "raisin": {2790};
	case "raisinaffine": {12000};
	case "rebel1": {1250000};
	case "rebel2": {1750000};
	case "rebel3": {2500000};
};