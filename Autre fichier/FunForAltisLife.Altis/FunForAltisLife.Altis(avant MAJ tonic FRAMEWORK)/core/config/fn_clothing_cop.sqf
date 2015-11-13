#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
			_ret pushBack ["U_Rangemaster","Uniforme recrue",0];
		};
		
		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret pushBack ["U_B_CTRG_3","Uniforme Sergent",0];
			_ret pushBack ["U_B_Wetsuit",nil,0];
			_ret pushBack ["U_I_Wetsuit",nil,0];
			_ret pushBack ["U_O_Wetsuit",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 3) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_vest","Uniforme Adjudant",0];
			_ret pushBack ["U_B_CombatUniform_mcam_tshirt",nil,0];
			_ret pushBack ["U_B_survival_uniform",nil,0];
			_ret pushBack ["U_B_CombatUniform_mcam",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 4) then
		{	
			_ret pushBack ["U_B_CombatUniform_mcam_worn","Uniforme Major",0];
			_ret pushBack ["U_B_PilotCoveralls",nil,0];
			_ret pushBack ["U_B_HeliPilotCoveralls",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 5) then
		{
			_ret pushBack ["U_B_SpecopsUniform_sgg","Uniforme Lieutenant",0];
			_ret pushBack ["U_I_GhillieSuit",nil,0];
			_ret pushBack ["U_B_GhillieSuit",nil,0];
			_ret pushBack ["U_O_GhillieSuit",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 6) then
		{
			_ret pushBack ["U_B_CTRG_1","Uniforme Capitaine",0];
			_ret pushBack ["U_B_CombatUniform_mcam","Uniforme General",0];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
			_ret pushBack ["H_Booniehat_mcamo",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret pushBack ["H_MilCap_mcamo",nil,0];
			_ret pushBack ["H_PilotHelmetFighter_B",nil,0];
			_ret pushBack ["H_HelmetB_camo",nil,0];
			_ret pushBack ["H_HelmetB_light",nil,0];
			_ret pushBack ["H_Beret_blk_POLICE",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 3) then
		{
			_ret pushBack ["H_Beret_02",nil,0];
			_ret pushBack ["H_Beret_Colonel",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 4) then
		{
			_ret pushBack ["H_BandMask_reaper",nil,0];
			_ret pushBack ["H_Watchcap_camo",nil,0];
			_ret pushBack ["H_Bandanna_gry",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 5) then
		{
		};
		
		if(__GETC__(life_coplevel) >= 6) then
		{
		};
		
		if(__GETC__(life_coplevel) >= 7) then
		{
		};
	};
	
	//Glasses
	case 2:
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
			_ret pushBack ["G_Shades_Black",nil,0];
			_ret pushBack ["G_Shades_Blue",nil,0];
			_ret pushBack ["G_Sport_Blackred",nil,0];
			_ret pushBack ["G_Sport_Checkered",nil,0];
			_ret pushBack ["G_Sport_Blackyellow",nil,0];
			_ret pushBack ["G_Sport_BlackWhite",nil,0];
			_ret pushBack ["G_Aviator",nil,0];
			_ret pushBack ["G_Squares",nil,0];
			_ret pushBack ["G_Combat",nil,0];
			_ret pushBack ["G_Lowprofile",nil,0];
			_ret pushBack ["G_Balaclava_blk",nil,0];
			_ret pushBack ["G_Balaclava_lowprofile",nil,0];
			_ret pushBack ["G_Balaclava_combat",nil,0];
			_ret pushBack ["G_Balaclava_oli",nil,0];
			_ret pushBack ["G_Diving",nil,0];
		};
	};
	
	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) >= 1 ) then
		{
			_ret pushBack ["V_Rangemaster_belt",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret pushBack ["V_PlateCarrier2_rgr",nil,0];
			_ret pushBack ["V_PlateCarrier1_rgr",nil,0];
			_ret pushBack ["V_PlateCarrier1_blk",nil,0];
			_ret pushBack ["V_RebreatherB",nil,0];
			_ret pushBack ["V_TacVestIR_blk",nil,0];
			_ret pushBack ["V_TacVest_camo",nil,0];
			_ret pushBack ["V_TacVest_blk",nil,0];
			_ret pushBack ["V_TacVest_blk_POLICE",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 3) then
		{
		};
		
		if(__GETC__(life_coplevel) >= 4) then
		{
		};
		
		if(__GETC__(life_coplevel) >= 5) then
		{
		};
		
		if(__GETC__(life_coplevel) >= 6) then
		{
		};
		
		if(__GETC__(life_coplevel) >= 7) then
		{
		};
	};
	
	//Backpacks
	case 4:
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
			_ret pushBack ["B_FieldPack_ocamo",nil,0];
			_ret pushBack ["B_FieldPack_cbr",nil,0];
			_ret pushBack ["B_Kitbag_cbr",nil,0];
			_ret pushBack ["B_Kitbag_mcamo",nil,0];
			_ret pushBack ["B_Carryall_cbr",nil,0];
			_ret pushBack ["B_Carryall_oli",nil,0];
			_ret pushBack ["B_Carryall_khk",nil,0];
			_ret pushBack ["B_AssaultPack_cbr",nil,0];
			_ret pushBack ["B_Bergen_sgg",nil,0];
			_ret pushBack ["B_TacticalPack_oli",nil,0];
			_ret pushBack ["B_Parachute","Parachute",0];
			_ret pushBack ["B_UAV_01_backpack_F",nil,0];
		};
	};
};

_ret;