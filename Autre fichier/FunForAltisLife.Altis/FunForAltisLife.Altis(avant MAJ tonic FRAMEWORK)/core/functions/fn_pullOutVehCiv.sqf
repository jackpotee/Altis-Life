/*
	File: fn_pullOutVeh.sqf
	Author: Bryan "Tonic" Boardwine
	
	*Edited by Hoe.GMG.Crew
*/
//if(playerSide == west OR (vehicle player == player)) exitWith {};
if(vehicle player == player) exitWith {};
if(player getVariable "hostage") then
{
	detach player;
	player setVariable["Escorting",false,true];
	player setVariable["transporting",false,true];
	player action ["Eject", vehicle player];
	titleText["Vous avez été traîné hors de la voiture!","PLAIN"];
	titleFadeOut 4;
};