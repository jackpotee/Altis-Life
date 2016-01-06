/*
	File: welcomecredits.sqf
	Author: Twikii
	Date: 04-18-2014
	Description:
	Creates an intro on the bottom-right hand corner of the screen and add camera effect to spawn.
*/

private ["_welcomeMessage","_finalText","_memberFunction","_memberNames","_rolepos","_roledir","_pos","_onScreenTime","_role1","_role1names","_role2","_role2names","_role3","_role3names","_role4","_role4names","_role5","_role5names"];
_welcomeMessage = format["Bienvenue sur le serveur AltisLife de la GhostSquad-Multigaming %1 !",format["%1", name player]];

waitUntil { alive player };

//playsound "intro";
sleep 2;													
titlecut [" ","Black in", 1];


_rolepos = position player;
_roledir = getdir player;
_pos     = [(_rolepos select 0) + (sin _roledir), (_rolepos select 1) + (cos _roledir),(_rolepos select 2)];
 
cutText [_welcomeMessage, "PLAIN DOWN"];
sleep 1;

_onScreenTime = 5;

sleep 3; //Wait in seconds before the credits start after player is in-game
 
_role1 = "Serveur GhostSquad Life";
_role1names = ["Altis Life est un mode Roleplay basé sur la simulation d'une vie. N'oubliez pas, ce n'est qu'un jeu !"];
_role2 = "Forum";
_role2names = ["https://www.ghostsquad-multigaming.fr/phpBB3/"];
_role3 = "Adresse du TeamSpeak";
_role3names = ["altislife.ghostsquad-multigaming.fr"];
_role4 = "Principales règles";
_role4names = ["Pas de troll. Pas de freekill. Pas de Car-kill. Respectez les autres joueurs. Pas d'insultes et surtout jouer RP !"];
_role5 = "Merci de lire";
_role5names = ["Consultez les règles sur le forum. Faites des sommations. Restez dans un contexte RP. Aucun freekill ne sera toleré. Bon jeu à tous !"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.60' color='#FF0000' align='center'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.80' color='#FFFFFF' align='center'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 1.0,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names]
];
"C:\Program Files (x86)\Steam\SteamApps\common\Arma 3\arma3server.exe"