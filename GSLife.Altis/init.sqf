enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
//[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

if(isDedicated && isNil("life_market_prices")) then
{
	[] call life_fnc_marketconfiguration;
	diag_log "Les prix de la bourse ont été généré!";
 
	"life_market_prices" addPublicVariableEventHandler
	{
	diag_log format["Les prix de la bourse ont été mis à jour %1", _this select 1];
	};
 
	//Start server fsm
	[] execFSM "core\fsm\server.fsm";
	diag_log "Server FSM executé";
};

//////////////////////////////////////////////////////
//////// SCRIPTS AJOUTE GS  //////////////
//////////////////////////////////////////////////////

[] execVM "core\functions\fn_emptyFuel.sqf";
[] execVM "scripts\statusBar\statusBar.sqf";
call compile preProcessFileLineNumbers "scripts\cmEarplugs\config.sqf";
[] execVM "scripts\playermarker.sqf";

//////////////////////////////////////////////////////


StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

MAC_fnc_switchMove = {
private["_object","_anim"];
_object = _this select 0;
_anim = _this select 1;

_object switchMove _anim;

};

[] spawn
{
waitUntil {!isNil "mod_cruiseControl"};
call mod_cruiseControl;
};


