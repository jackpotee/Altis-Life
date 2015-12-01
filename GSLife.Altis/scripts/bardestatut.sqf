waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

_rscLayer = "StatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["StatusBar","PLAIN"];

[] spawn {
	sleep 5;
	_statusText = "Bienvenue sur le serveur Fun For Altis Life";
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = _counter - 1;
		_statusText = "GhostSquad Life 3.1.4.8";
		((uiNamespace getVariable "StatusBar")displayCtrl 1000)ctrlSetText format["%5 | FPS: %1 | Flic: %2 | Civil: %3 | Medics: %4 | Site: Bientôt!", round diag_fps, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits, _statusText, _counter];
	};
};


