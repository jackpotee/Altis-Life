/*
File: fn_cellphone2.sqf
Author: Timo

Description:
With no radio cant use Cellphone
*/

private["_cell"];
_cell = false;
{if (_x find "tf_anprc152" >= 0 or _x find "tf_anprc148jem" >= 0) then {_cell = true;} } forEach assignedItems player;


if(_cell) then {
createDialog "Life_cell_phone"; // or /** Life_my_smartphone **\ if you use the SQL Based Smartphone By Silex ( http://www.altisliferpg.com/topic/4522-howto-sql-based-smartphone/ )
}else{
hint parseText format ["Vous devez avoir un téléphone cellulaire ou une radio pour appeler. Vous Pouvez lacheter dans le magasin general"];
};