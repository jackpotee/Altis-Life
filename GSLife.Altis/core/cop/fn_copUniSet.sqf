#include <macro.h>
/*
 No Author Needed; it's a few default lines of code
*/

if(playerSide == west) then
{
 if ((__GETC__(life_coplevel) >= 1) && (uniform player == "U_Rangemaster")) then {
 player setObjectTextureGlobal[0,"textures\uniform_recrue.jpg"];
 };
 
 if ((__GETC__(life_coplevel) >= 1) && (uniform player == "U_B_CTRG_3")) then {
 player setObjectTextureGlobal[0,"textures\uniform_sergent.jpg"];
 };
 
 if ((__GETC__(life_coplevel) >= 1) && (uniform player == "U_B_CombatUniform_mcam_vest")) then {
 player setObjectTextureGlobal[0,"textures\uniform_adjudant.jpg"];
 };
 
 if ((__GETC__(life_coplevel) >= 1) && (uniform player == "U_B_CombatUniform_mcam_worn")) then {
 player setObjectTextureGlobal[0,"textures\uniform_major.jpg"];
 };
 
 if ((__GETC__(life_coplevel) >= 1) && (uniform player == "U_B_SpecopsUniform_sgg")) then {
 player setObjectTextureGlobal[0,"textures\uniform_lieutenant.jpg"];
 };
 
 if ((__GETC__(life_coplevel) >= 1) && (uniform player == "U_B_CTRG_1")) then {
 player setObjectTextureGlobal[0,"textures\uniform_capitaine.jpg"];
 };
 
 if ((__GETC__(life_coplevel) >= 1) && (uniform player == "U_B_CombatUniform_mcam")) then {
 player setObjectTextureGlobal[0,"textures\uniform_general.jpg"];
 };
 
};