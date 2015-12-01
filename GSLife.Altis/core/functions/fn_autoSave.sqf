/*
@Version: 0.3
@Author: =IFD= Cryptonat
@Edited: 5/16/14

Description:
Saves the player's gear every 10 minutes.
*/

while {true} do {
sleep 300;
[] call SOCK_fnc_updateRequest;
hint "Sauvegarde Automatique."
};
// < ---- OLD CODE BELOW ---- > 
/* 
@version: 0.2
@Author: =IFD= Cryptonat 
@Created: 2/22/14 

Description: Saves the player's gear every 10 minutes. 

while {true} do {
    sleep 600;
    if (alive player) then {
        if (playerside == west) then {
        [] call life_fnc_sessionUpdate;
        [] call life_fnc_saveGear; //this is what allows the cop gear to save
        hint "Sauvegarde automatique."
    } else {
    [] call life_fnc_sessionUpdate;
    hint "Sauvegarde Automatique."
    };
    };
}; */   