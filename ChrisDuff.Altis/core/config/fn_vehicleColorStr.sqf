/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Blanc";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Bleu / Blanc"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Gendarmerie"};
			case 8: {_color = "Taxi"};
			case 9: {_color = "Bleu"};
			case 10: {_color = "Rouge"};
			case 11: {_color = "Monster"};
			case 12: {_color = "SAMU"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Vert";};
			case 2: {_color = "Bleu";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Jaune";};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Noir"};
			case 8: {_color = "Gendarmerie"};
			case 9: {_color = "Bleu Sport"};
			case 10: {_color = "Orange Sport"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rouge"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Noir / Blanc"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Vert"};
			case 6: {_color = "Gendarmerie"};
			case 7: {_color = "Monster"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dark Rouge";};
			case 1: {_color = "Silver";};
			case 2: {_color = "Orange";};
			case 3: {_color = "Gendarmerie";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Bleu";};
			case 6: {_color = "Rouge";};
			case 7: {_color = "Taxi";};
			case 8: {_color = "SAMU";};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Marron"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Blanc"};
			case 3: {_color = "Bleu"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Digi Vert"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie"};
			case 1: {_color = "Noir"};
			case 2: {_color = "Civ Bleu"};
			case 3: {_color = "Civ Rouge"};
			case 4: {_color = "Digi Vert"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "SAMU"};
		};
	};


		case "cl3_polo_gti_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};

	case "cl3_golf_mk2_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};

	case "cl3_range_rover_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};

	case "cl3_q7_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};

	case "cl3_dodge_charger_f_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};

	case "cl3_transit_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Blanc"};
			case 2: {_color = "Noir"};

		};
	};

	case "cl3_dodge_charger_f_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};

	case "cl3_z4_2008_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};

	case "cl3_dbs_volante_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};

	case "cl3_carrera_gt_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};

	case "cl3_458_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};

	case "cl3_aventador_lp7004_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};

	case "cl3_lamborghini_gt1_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};

	case "cl3_murcielago_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};

	case "cl3_reventon_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};

	case "cl3_r8_spyder_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};

	case "cl3_veyron_blk_wht":
	{
		switch (_index) do
		{
			case 0: {_color = "Gris"};
			case 1: {_color = "Bordeaux"};
			case 2: {_color = "Bleu foncé"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rose"};
			case 5: {_color = "Sable"};
			case 6: {_color = "Vert"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Noir"};
			case 9: {_color = "Jaune"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Blanc / Bleu"};
			case 2: {_color = "Digi Vert"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "SAMU"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie"};
			case 1: {_color = "Noir"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};

	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};
};

_color;