/*
	File: fn_gpsTracker.sqf
	Author: Poseidon
	
	Description: Attaches a gps tracker to selected vehicle
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {};
if(!(_unit isKindOf "LandVehicle" OR _unit isKindOf "Ship" OR _unit isKindOf "Air")) exitWith {hint "Tu ne peux pas ajouter de balise GPS sur ce vehicule."};
if(player distance _unit > 7) exitWith {hint "Raproche toi pour pouvoir poser la balise GPS!"};
if(!([false,"gpstracker",1] call life_fnc_handleInv)) exitWith {};
closeDialog 0;

life_action_inUse = true;
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 4;
life_action_inUse = false;
if(player distance _unit > 7) exitWith {titleText["Tu es trop loin!","PLAIN"];};
titleText["Tu as collé la balise GPS.","PLAIN"];
_unit setVariable["tracking",true,true];
[_unit] spawn {
	_veh = _this select 0;
	_markerName = format["%1_gpstracker",_veh];
	_marker = createMarkerLocal [_markerName, visiblePosition _veh];
	_marker setMarkerColorLocal "ColorRed";
	_marker setMarkerTypeLocal "Mil_dot";
	_marker setMarkerTextLocal "Balise GPS: "+getText(configFile >> "CfgVehicles" >> typeof _veh >> "displayName");
	_marker setMarkerPosLocal getPos _veh;
	while {true} do {
		if(not alive _veh) exitWith {deleteMarkerLocal _markerName;};
		_marker setMarkerPosLocal getPos _veh;
		sleep 2;
	};
};