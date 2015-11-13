/*
	File: fn_pulloutAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pulls civilians out of a car if it's stopped.
*/
private["_crew"];
_crew = crew cursorTarget;

{
	_x setVariable ["transporting",false,true]; _x setVariable ["Escorting",false,true];
	[[_x],"life_fnc_pullOutVeh",_x,false] spawn life_fnc_MP; // <--- Civ = fn_pullOutVeh.sqf
} foreach _crew;