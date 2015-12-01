/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "hostage")) exitWith {};
//if(side _unit == west) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!
player say3D "cuff"; 

_unit setVariable["hostage",true,true];
[[player], "life_fnc_restrainCiv", _unit, false] spawn life_fnc_MP;

//Afficher prise d'otage
//[[0,format["!!!%1 a été pris en otage!!!", name _unit, name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;