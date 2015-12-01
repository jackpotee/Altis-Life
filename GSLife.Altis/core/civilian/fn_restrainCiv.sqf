/*
	File: fn_restrain.sqf
	Author: Bryan "Tonic" Boardwine

	*Edited Hoe.GMG.Crew

	Description:
	Retrains the client.
*/
private["_cop"];
_cop = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _cop) exitWith {};

//Monitor excessive restraint
switch (playerSide) do
{
	case west:
	{
		[] spawn
		{
			private["_time"];
			while {true} do
			{
				_time = time;
				waitUntil {(time - _time) > (5 * 60)};
				
				if(!(player getVariable["hostage",FALSE])) exitWith {};
				if(!([civilian,getPos player,30] call life_fnc_nearUnits) && (player getVariable["hostage",FALSE]) && vehicle player == player) exitWith {
					titleText["You have managed to break free of your restraints!","PLAIN"];
					player setVariable["hostage",FALSE,TRUE];
					player setVariable["Escorting",FALSE,TRUE];
					player setVariable["transporting",FALSE,TRUE];
				};
			};
		};

	};
	
	case civilian:
	{
		[] spawn
		{
			private["_time"];
			while {true} do
			{
				_time = time;
				waitUntil {(time - _time) > (5 * 60)};
				
				if(!(player getVariable["hostage",FALSE])) exitWith {};
				if(!([west,getPos player,30] call life_fnc_nearUnits) && (player getVariable["hostage",FALSE]) && vehicle player == player) exitWith {
					titleText["You have managed to break free of your restraints!","PLAIN"];
					player setVariable["hostage",FALSE,TRUE];
					player setVariable["Escorting",FALSE,TRUE];
					player setVariable["transporting",FALSE,TRUE];
				};
			};
		};
	};
};

if((player getVariable["surrender",FALSE])) then { player setVariable["surrender",FALSE,TRUE]; player switchMove ""; };
titleText[format["Tu as été menotté par %1.",name _cop],"PLAIN"];
player say3D "cuff";
				
while {player getVariable "hostage"} do
{
	player playMove "AmovPercMstpSnonWnonDnon_Ease";
	_state = vehicle player;
	waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" || !(player getvariable "hostage") || vehicle player != _state};
			
	if(!alive player) exitWith
	{
		player setVariable ["hostage",false,true];
	};
	
	if(vehicle player != player) then
	{
		if(driver (vehicle player) == player) then {player action["eject",vehicle player];};
		//disableUserInput true;
	}
		else
	{
		//disableUserInput false;
	};
};

//disableUserInput false;
		
if(alive player) then
{
	player switchMove "AmovPercMstpSlowWrflDnon_SaluteIn";
	player setVariable ["Escorting",false,true];
	player setVariable ["transporting",false,true];
	detach player;
	//titleText["Tu as été démenotté, appuie sur V pour partir.","PLAIN"];
};