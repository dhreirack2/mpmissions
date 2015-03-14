#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["C_SUV_01_F",15000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["cl3_polo_gti_black",22000], //polo gti
			["cl3_golf_mk2_black",24000], // golf mk2
			["cl3_range_rover_black",29000], // range rover
			["cl3_q7_black",35000], // audi q7
			["cl3_suv_black",45000], // suv arma 2 
			["cl3_transit_black",38000], // ford transit
			["C_Van_01_transport_F",45000], //camionette base
			["cl3_dodge_charger_f_black",79000], // doge charger
			["cl3_z4_2008_black",85000], // bmw z4
			["cl3_dbs_volante_black",264000], // aston martin dbs volante
			["cl3_carrera_gt_black",420000] // porsche carrera gt

		];

		//Véhicules Donateur
		if(license_civ_donateurvehicules) then
		{
			_return pushBack ["cl3_458_black",290000]; // ferrari 458
			_return pushBack ["cl3_aventador_lp7004_black",200000]; // lamborghini avantador
			_return pushBack ["cl3_lamborghini_gt1_black",207000]; // lamborghini gt1
			_return pushBack ["cl3_murcielago_black",215000]; // lamborghini mucielago
			_return pushBack ["cl3_reventon_black",195000]; // lamborghini reventon
			_return pushBack ["cl3_r8_spyder_black",225000]; // audi r8
			_return pushBack ["cl3_veyron_blk_wht",355000]; // bugatti veyron
			_return pushBack ["cl3_carrera_gt_black",220000]; // porsche carrera gt
		};
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000]
		];
		if(__GETC__(life_donator) > 0) then
		{
			_return pushBack ["O_Truck_03_device_F",450000];
			_return pushBack ["B_Truck_01_box_F",350000];
		};
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["B_Heli_Light_01_F",325000]
		];

		if(__GETC__(life_donator) > 0) then
		{
			_return pushBack ["O_MRAP_02_F",200000];
			_return pushBack ["O_MRAP_02_hmg_F",1200000];
		};
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",750000];
		};
	};
	
	case "cop_car":
	{
		_return pushBack
		["C_Hatchback_01_F",3500];
		if(__GETC__(life_coplevel) >= 1) then
		{
			_return pushBack
			["C_Offroad_01_F",10000];
		};
		if(__GETC__(life_coplevel) >= 1) then
		{
			_return pushBack
			["C_SUV_01_F",15000];
		};
		if(__GETC__(life_coplevel) >= 3) then
		{
			_return pushBack ["C_Hatchback_01_sport_F",25000];
			_return pushBack ["ford_mondeo_gend",38000]; // ford mondeo gendarmerie
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_return pushBack
			["B_MRAP_01_F",50000];
		};
		if(__GETC__(life_coplevel) >= 8) then
		{
			_return pushBack
			["B_MRAP_01_hmg_F",100000];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
		if(__GETC__(life_donator) > 0) then
		{
			_return pushBack ["I_Heli_Transport_02_F",1200000];
		};
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) >= 2) then
		{
			_return pushBack
			["B_Heli_Light_01_F",75000];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
		};
		if(__GETC__(life_coplevel) >= 6) then
		{
			_return pushBack
			["I_Heli_light_03_unarmed_F",250000];
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) >= 3) then
		{
			_return pushBack
			["B_Heli_Light_01_F",75000];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
		};
		if(__GETC__(life_coplevel) >= 6) then
		{
			_return pushBack
			["I_Heli_light_03_unarmed_F",250000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
