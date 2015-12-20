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
			_ret pushBack ["A3L_Police_Uniform",nil,0];
			_ret pushBack ["police_uni1",nil,0];
			_ret pushBack ["max_Lapd_uniform",nil,0];
			_ret pushBack ["U_007_US_Police_officer",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret pushBack ["A3L_Sheriff_Uniform","Uniforme Sheriff",0];
			_ret pushBack ["max_sheriff_uniform",nil,0];
			_ret pushBack ["swat_officer_lapd",nil,0];
			_ret pushBack ["swat_lapd_uniform",nil,0];
		};
		
	/*	if(__GETC__(life_coplevel) >= 3) then
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
	*/	
		if(__GETC__(life_coplevel) >= 6) then
		{
			_ret pushBack ["DAR_ACUG","Uniforme General",0];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
			_ret pushBack ["fbi_officer_cap",nil,0];
			_ret pushBack ["max_police_Hat",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret pushBack ["max_sergeant_Hat",nil,0];

		};
		
		if(__GETC__(life_coplevel) >= 3) then
		{
			_ret pushBack ["max_sheriff_Hat",nil,0];
			_ret pushBack ["H_Stetson",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 4) then
		{
		_ret pushBack ["Police_Swat_Helmet",nil,0];
		_ret pushBack ["gear_ECH_BK_11",nil,0];
		_ret pushBack ["gear_ECH_BK_01",nil,0];
		_ret pushBack ["gear_ECH_BK_21",nil,0];
		_ret pushBack ["R3F_casque_spectra_EOD",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 5) then
		{
		};
		
		if(__GETC__(life_coplevel) >= 6) then
		{
			_ret pushBack ["H_BeretBlack",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 7) then
		{
			_ret pushBack ["H_BeretMaroon",nil,0];
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
			_ret pushBack ["A3L_policevest2",nil,0];
		};
		
		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret pushBack ["A3L_policevest1",nil,0];
			_ret pushBack ["A3L_sheriffvest3",nil,0];
			_ret pushBack ["A3L_sheriffvest1",nil,0];
			
			_ret pushBack ["gign_BlackVest",nil,0];  //menu déroulant à faire
			
			_ret pushBack ["Swat_sniper_vest",nil,0];
			_ret pushBack ["police_swat_vest",nil,0];				
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