/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Marché d'Altis",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","hache","fuelF","peach","storagesmall","storagebig","tabacp","raisinp","raisina"]]};
	case "marketauto": {["Acheteur Pièces détachée Auto",["piecea"]]};
	case "rebel": {["Marché Rebel",["scalpel","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","hache","fuelF","peach","blastingcharge"]]};
	case "gang": {["Marché de Gang", ["scalpel","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","hache","fuelF","peach","blastingcharge"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Dealer de Drogue",["cocainep","heroinp","marijuana","methp","lsdp"]]};
	case "oil": {["Negociateur de kérosènes",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Poissonnerie d'Altis",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Negociateur de verres",["glass"]]};
	case "iron": {["Negociateur de fer",["iron_r","copper_r"]]};
	case "diamond": {["Negociateur de diamants",["diamond","diamondc"]]};
	case "salt": {["Negociateur de sels",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","gpstracker"]]};
	case "cement": {["Negociateur de ciment",["cement"]]};
	case "bois": {["Negociateur de bois",["bois","bois_r"]]};
	case "gold": {["Acheteur d'Or",["goldbar"]]};
	case "organ": {["Dealer d'organes",["kidney","scalpel"]]};
};