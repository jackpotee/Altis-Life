/*
	File: fn_kidneyoperation.sqf
	Author: Backer
	
	Description:
	Medic operates player, so he can live with one kidney
*/
private["_unit"];

_unit = cursorTarget;

if(!(_unit getVariable ["missingOrgan",FALSE])) exitWith {hint "Ce joueur a ses reins et n'a pas besoin de chirurgie!"};  //Check if kidney lose
if (side player == independent) then {hint "Vous operez la personne pour qu'elle puisse vivre avec un seul rein!"}; 
player playMove "AinvPknlMstpSnonWnonDnon_medic"; //makes the thief do an animation as to seem like they are doing surgery
sleep 10;
if(player distance (_this select 0) > 5) exitWith {hint "Vous etes trop loin pour operer cette personne!"};
if (side player == independent) then {hint "Vous avez opere la personne avec succes et meritez une recompense!"}; 
_unit setVariable["missingOrgan",false,true];   //HE WANTS live
sleep 0.1; //little wait
_unit setdamage 0;  //PLAYER GETS BACK eat, life and water
_unit setFatigue .5;
life_cash = life_cash + 15000;