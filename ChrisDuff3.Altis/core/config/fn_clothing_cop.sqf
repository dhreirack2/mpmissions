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
ctrlSetText[3103,"Vestiaire Gendarmerie"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["civ_tenue_Gendarme","Uniforme de gendarme",0];
		_ret pushBack ["U_O_Wetsuit","Tenue de plongée",0];
		_ret pushBack ["civ_tenue_BiereDuff",nil,0];
		// Pilote
		if(license_cop_air) then
		{
			_ret pushBack ["U_B_PilotCoveralls",nil,0];
			_ret pushBack ["U_I_pilotCoveralls",nil,0];
			_ret pushBack ["U_B_HeliPilotCoveralls",nil,0];
			_ret pushBack ["U_I_HeliPilotCoveralls",nil,0];
		};
		// Tenue Civils
		if(__GETC__(life_coplevel) >= 4) then
		{
			_ret pushBack ["U_BG_Guerilla2_1",nil,0];
			_ret pushBack ["U_BG_Guerilla2_2",nil,0];
			_ret pushBack ["U_BG_Guerilla2_3",nil,0];
			_ret pushBack ["U_BG_Guerilla3_1",nil,0];
			_ret pushBack ["U_BG_Guerilla3_2",nil,0];
			_ret pushBack ["U_B_survival_uniform",nil,0];
			_ret pushBack ["rpima_uniform",nil,0];
			_ret pushBack ["gign_uniform",nil,0];
			_ret pushBack ["U_I_GhillieSuit",nil,0];
		};
	};
	
	//Hats
	case 1:
	{
		_ret pushBack ["H_MilCap_blue",nil,0];
		//Grade Brigadier	
		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret pushBack ["H_Beret_blk",nil,0];
			_ret pushBack ["H_Watchcap_sgg",nil,0];	
			_ret pushBack ["H_CrewHelmetHeli_B","Masque à gaz",0];
		};
		//Grade Adjudant
		if(__GETC__(life_coplevel) >= 3) then
		{
			_ret pushBack ["H_Beret_02",nil,0];
			_ret pushBack ["gign_Balaclava",nil,0];
		};
		//Grade Major
		if(__GETC__(life_coplevel) >= 4) then
		{
			_ret pushBack ["H_Beret_Colonel",nil,0];
			_ret pushBack ["gign_helm4",nil,0];
		};
		//Grade Lieutenant
		if(__GETC__(life_coplevel) >= 5) then
		{
			_ret pushBack ["gign_Balaclava",nil,0];
		};
		//Grade Capitaine
		if(__GETC__(life_coplevel) >= 6) then
		{
			_ret pushBack ["gign_helm",nil,0];
		};
		//Grade Commandant
		if(__GETC__(life_coplevel) >= 7) then
		{
			_ret pushBack ["gign_helm3",nil,0];
		};
		//Grade Colonel
		if(__GETC__(life_coplevel) >= 8) then
		{
			_ret pushBack ["gign_helm4",nil,0];
		};
		//Grade Général
		if(__GETC__(life_coplevel) >= 9) then
		{
			_ret pushBack ["gign_helm4",nil,0];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Diving",nil,500],
			["G_Shades_Black",nil,0],
			["G_Shades_Blue",nil,0],
			["G_Shades_Green",nil,0],
			["G_Shades_Red",nil,0],
			["G_Sport_Blackred",nil,0],
			["G_Sport_Checkered",nil,0],
			["G_Sport_Blackyellow",nil,0],
			["G_Sport_BlackWhite",nil,0],
			["G_Aviator",nil,0],
			["G_Squares",nil,0],
			["G_Lowprofile",nil,0]
		];
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_Rangemaster_belt",nil,500];
		_ret pushBack ["V_RebreatherIR",nil,500];

		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret pushBack ["V_BandollierB_blk",nil,900];
			_ret pushBack ["V_TacVest_blk",nil,1500];
		};
		if(__GETC__(life_coplevel) >= 3) then
		{
			_ret pushBack ["gign_BlackVest",nil,2500];
			_ret pushBack ["V_TacVestIR_blk",nil,2000];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_ret pushBack ["V_PlateCarrierGL_rgr",nil,3500];
		};
		if(__GETC__(life_coplevel) >= 5) then
		{
			_ret pushBack ["V_PlateCarrier1_blk",nil,2500];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret pushBack ["B_Kitbag_mcamo",nil,0];
		_ret pushBack ["B_TacticalPack_blk",nil,0];
		_ret pushBack ["B_TacticalPack_rgr",nil,0];
		// Grade Brigadier
		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret pushBack ["B_AssaultPack_rgr",nil,0];
			_ret pushBack ["B_AssaultPack_dgtl",nil,0];
			_ret pushBack ["B_AssaultPack_blk",nil,0];
			_ret pushBack ["B_AssaultPack_Kerry",nil,0];
			_ret pushBack ["B_Kitbag_rgr",nil,0];
			_ret pushBack ["B_FieldPack_blk",nil,0];
			_ret pushBack ["B_Bergen_blk",nil,0];
			_ret pushBack ["B_Bergen_mcamo",nil,0];
		};
		// Grade Adjudant
		if(__GETC__(life_coplevel) >= 3) then
		{
			_ret pushBack ["B_Carryall_cbr",nil,0];
			_ret pushBack ["B_Carryall_khk",nil,0];
			_ret pushBack ["B_Carryall_mcamo",nil,0];
			
		};
		// Pilote
		if(license_cop_air) then
		{
			_ret pushBack ["B_Parachute",nil,0];
		};
	};
};

_ret;