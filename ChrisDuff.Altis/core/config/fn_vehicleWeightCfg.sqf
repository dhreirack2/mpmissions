/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "C_Offroad_01_F": {65};
	case "B_G_Offroad_01_F": {65};
	case "B_Quadbike_01_F": {25};
	case "I_Truck_02_covered_F": {250};
	case "I_Truck_02_transport_F": {200};
	case "C_Hatchback_01_F": {40};
	case "C_Hatchback_01_sport_F": {45};
	case "C_SUV_01_F": {50};
	case "C_Van_01_transport_F": {100};
	case "I_G_Van_01_transport_F": {100};
	case "C_Van_01_fuel_F": {120};
	case "C_Van_01_box_F": {150};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_Truck_01_box_F": {450};
	case "B_Truck_01_transport_F": {325};
	case "B_MRAP_01_F": {65};
	case "B_MRAP_01_hmg_F": {65};
	case "O_MRAP_02_F": {60};
	case "O_MRAP_02_hmg_F": {60};
	case "I_MRAP_03_F": {58};
	case "B_Heli_Light_01_F": {10};
	case "O_Heli_Light_02_unarmed_F": {10};
	case "I_Heli_light_03_unarmed_F": {10};
	case "B_Heli_Transport_01_F": {15};
	case "I_Heli_Transport_02_F": {35};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "O_Truck_03_transport_F": {285};
	case "O_Truck_03_covered_F": {300};
	case "O_Truck_03_device_F": {350};
	case "Land_CargoBox_V1_F": {500};
	case "Box_IND_Grenades_F": {250};
	case "B_supplyCrate_F": {200};
	case "Land_Pod_Heli_Transport_04_box_F": {700};
	case "Land_Wreck_Traw_F": {100};
	case "Land_Wreck_Traw2_F": {100};
	case "cl3_polo_gti_black": {65}; //polo gti
	case "cl3_golf_mk2_black": {65}; // golf mk2
	case "cl3_range_rover_black": {75}; // range rover
	case "cl3_q7_black": {60}; // audi q7
	case "cl3_suv_black": {80}; // suv arma 2 
	case "cl3_transit_black": {130}; // ford transit
	case "cl3_dodge_charger_f_black": {40}; // doge charger
	case "cl3_z4_2008_black": {40}; // bmw z4
	case "cl3_dbs_volante_black": {35}; // aston martin dbs volante
	case "cl3_carrera_gt_black": {35}; // porsche carrera gt
	case "cl3_458_black": {35}; // ferrari 458
	case "cl3_aventador_lp7004_black": {35}; // lamborghini avantador
	case "cl3_lamborghini_gt1_black": {35}; // lamborghini gt1
	case "cl3_murcielago_black": {35}; // lamborghini mucielago
	case "cl3_reventon_black": {35}; // lamborghini reventon
	case "cl3_r8_spyder_black": {35}; // audi r8
	case "cl3_veyron_blk_wht": {40}; // bugatti veyron
	default {-1};
};