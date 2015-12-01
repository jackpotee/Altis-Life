/*
	ALAH SNACKBAR!
        Created By: TAW_Tonic
        Edited By: Sebastien Scibilia
        Tested and Approved by: Capt. Fitzsimmons and 617th PMC
*/
private["_test"];
if(vest player != "V_HarnessOGL_gry") exitWith {};
[[0,format["Un Kamikaze va exploser"]],"life_fnc_broadcast",true,false] spawn life_fnc_MP; // avertissement montré dans le chat
sleep 1; 
[[0,format["%1 C'est fait exploser!!",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP; // Révèle le joueur qui a activé dans le chat

_test = "Bo_Mk82" createVehicle [0,0,9999];
_test setPos (getPos player);
_test setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};