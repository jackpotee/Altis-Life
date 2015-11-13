/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "Tu n'as pas selectionné d'objet à retirer.";};
if(!([_value] call TON_fnc_isnumber)) exitWith {hint "Tu n'as pas entré un nombre valide."};
if(parseNumber(_value) <= 0) exitWith {hint "Vous devez entrer un montant réel que vous souhaitez supprimer."};
_ind = [_data,life_illegal_items] call TON_fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["C'est un élément illégal et les flics sont à proximité, vous ne pouvez pas disposer de la preuve.","PLAIN"]};
if(player != vehicle player) exitWith {titleText["Vous ne pouvez pas supprimer un élément lorsque vous êtes dans un véhicule.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Impossible de supprimer ce montant, peut-être vous n'avez pas cette somme?"};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Tu as retiré %1 %2 de ton inventaire.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;