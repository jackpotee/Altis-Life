/*
	File: fn_pullOutVehCiv.sqf
	Author: Ricardo Gomez
*/

if(vehicle player == player) exitWith {};
if(player getVariable "hostage" || player getVariable "restrained") then
{
	detach player;
	player setVariable["Escorting",false,true];
	player setVariable["transporting",false,true];
	player action ["Eject", vehicle player];
	titleFadeOut 4;
};