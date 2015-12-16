/*
	File: fn_pullOutVeh.sqf
	Author: Bryan "Tonic" Boardwine
	
*/
if(vehicle player == player) exitWith {};

if (playerSide == civilian) then 
{
	if (player getVariable "hostage" || player getVariable "restrained") then 
	{
		detach player;
		player setVariable["Escorting",false,true];
		player setVariable["transporting",false,true];
	};
        // Always pull Civ´s out, instead of any variable
	player action ["Eject", vehicle player];
	titleFadeOut 4;
}; 

if (playerSide == west) then 
{
	if (player getVariable "hostage" || player getVariable "restrained") then 
	{
		detach player;
		player setVariable["Escorting",false,true];
		player setVariable["transporting",false,true];
		player action ["Eject", vehicle player];
		titleFadeOut 4;
	};
};