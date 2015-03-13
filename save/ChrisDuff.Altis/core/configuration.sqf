#include <macro.h>
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 1; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
life_handcuffs = ObjNull;
life_handcuffkeys = ObjNull;
life_god = false;
life_frozen = false;
life_markers = false;
life_fadeSound = false;
life_fatigue = 0.5; //ajouté par dhrei, sert à limité la fatigue (50%)

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,1000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,4); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,200000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,true); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 32; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 32; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,10); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,700);
__CONST__(life_impound_boat,1200);
__CONST__(life_impound_air,1200);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 50000;
		life_paycheck = 0;
	};
	case civilian: 
	{
		life_atmcash = 15000;
		life_paycheck = 500;
	};
	
	case independent: {
		life_atmcash = 50000;
		life_paycheck = 1000;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly);

life_inv_items = 
[
	"life_inv_handcuffs",
	"life_inv_handcuffkeys",
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
    "life_inv_mauer",
    "life_inv_mauer2",
    "life_inv_objects",
    "life_inv_kidney",
    "life_inv_uwsl"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_cop_donateurcoparmes","cop"],
	["license_cop_donateurcopvehicules","cop"],
	["license_civ_donateurarmes","civ"],
	["license_civ_donateurvehicules","civ"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_presse","civ"],
	["license_civ_dep","civ"]
];

{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
life_illegal_items = [["handcuffs",200],["handcuffkeys",100],["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500],["objects",500]];

/*
	Sell / buy arrays
*/
sell_array = 
[
	["handcuffs",25],
	["handcuffkeys",10],
	["apple",50],
	["heroinu",1850],
	["heroinp",2650],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",3200],
	["turtle",3000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",2350],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
	["cocaine",3000],
	["cocainep",5000],
	["diamond",750],
	["diamondc",2000],
	["iron_r",3200],
	["copper_r",1500],
	["salt_r",1650],
	["glass",1450],
	["fuelF",500],
	["spikeStrip",1200],
	["cement",1950],
	["goldbar",95000],
    ["mauer",0],
    ["mauer2",0],
    ["objects",450],
    ["uwsl",5000],
    ["kidney",50000] //Oubliez pas les Virgules si c'est le dernier
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["handcuffs",100],
	["handcuffkeys",50],
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",30],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["pickaxe",800],
	["redgull",500],
	["fuelF",850],
	["peach",68],
	["spikeStrip",2500],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],
    ["mauer",10],
    ["mauer2",20],
    ["uwsl",10000],
    ["kidney",75000] //Oubliez pas les Virgules si c'est le dernier
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",550],
	["C_Hatchback_01_F",1500],
	["C_Offroad_01_F", 2500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",5250],
	["C_Van_01_transport_F",7890],
	["C_Hatchback_01_sport_F",2350],
	["C_Van_01_fuel_F",4500],
	["I_Heli_Transport_02_F",100000],
	["C_Van_01_box_F",9000],
	["I_Truck_02_transport_F",12000],
	["I_Truck_02_covered_F",14500],
	["B_Truck_01_transport_F",25650],
	["O_Truck_03_transport_F",10000],
	["O_Truck_03_covered_F",10000], 
	["O_Truck_03_device_F",25000],
	["B_Truck_01_box_F", 35000],
	["O_MRAP_02_F",45000],
	["O_MRAP_02_hmg_F",400000],
	["B_Heli_Light_01_F",10000],
	["O_Heli_Light_02_unarmed_F",65000],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",4500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",3500],
	["B_Boat_Armed_01_minigun_F",16500],
	["B_SDV_01_F",25000],
	["B_MRAP_01_hmg_F",100000],
	["B_MRAP_01_F",35000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",950],
	["C_Hatchback_01_F",4500],
	["C_Offroad_01_F", 6500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",15000],
	["C_Van_01_transport_F",25000],
	["C_Hatchback_01_sport_F",7500],
	["C_Van_01_fuel_F",3850],
	["I_Heli_Transport_02_F",125000],
	["C_Van_01_box_F",35000],
	["I_Truck_02_transport_F",49800],
	["I_Truck_02_covered_F",62000],
	["B_Truck_01_transport_F",135000],
	["B_Truck_01_box_F", 150000],
	["O_MRAP_02_F",65000],
	["O_MRAP_02_hmg_F",400000],
	["B_Heli_Light_01_F",57000],
	["O_Heli_Light_02_unarmed_F",72500],
	["C_Rubberboat",950],
	["C_Boat_Civil_01_F",6800],
	["B_Boat_Transport_01_F",850],
	["C_Boat_Civil_01_police_F",4950],
	["B_Boat_Armed_01_minigun_F",21000],
	["B_SDV_01_F",45000],
	["B_MRAP_01_hmg_F",8],
	["B_MRAP_01_F",350000]
];
__CONST__(life_garage_sell,life_garage_sell);

life_assur_prices =
[
	["C_Kart_01_Blu_F",500],
    ["C_Kart_01_Fuel_F",500],
    ["C_Kart_01_Vrana_F",500],
    ["C_Kart_01_Red_F",500],
	["B_Quadbike_01_F",500],
	["C_Hatchback_01_F",4750],
	["C_Hatchback_01_sport_F",17500],
	["C_Offroad_01_F",6250],
	["LandRover_TK_CIV_EP1", 9250],	
	["C_SUV_01_F",11000], 
	["C_Van_01_transport_F",17500],
	["C_Van_01_box_F",27500],
	["C_Van_01_fuel_F",27500],
	["I_Truck_02_transport_F",50000],
	["I_Truck_02_covered_F",70000],
	["I_Truck_02_box_F",70000],
	["B_Truck_01_transport_F",90000],
	["B_Truck_01_box_F", 145000],
	["O_Truck_03_transport_F",50000],
	["O_Truck_03_covered_F",50000], 
	["O_Truck_03_device_F",100000],  	
	["B_G_Offroad_01_F",10000],
	["B_G_Offroad_01_armed_F",100000],
	["O_MRAP_02_F",100000],
	["O_MRAP_02_hmg_F",400000],
	["B_MRAP_01_F",100000],
	["B_MRAP_01_hmg_F",200000],
	["B_MRAP_01_hmg_F",100000],
	["I_MRAP_03_F",100000],
	["C_Heli_Light_01_civil_F",55000],	
	["GNT_C185",75000],		
	["B_Heli_Light_01_F",55000], 
	["B_Heli_Attack_01_F",55000],
	["O_Heli_Light_02_unarmed_F",75000],
	["I_Heli_Transport_02_F",300000], 
	["I_Heli_light_03_unarmed_F",75000],
	["B_Heli_Transport_01_F",75000], 
	["C_Rubberboat",10000],
	["I_G_Boat_Transport_01_F",10000],
	["C_Boat_Civil_01_F",10000],
	["B_Boat_Transport_01_F",10000],
	["C_Boat_Civil_01_police_F",10000],
	["B_Boat_Armed_01_minigun_F",10000],
	["B_SDV_01_F",10000]
];
__CONST__(life_assur_prices,life_assur_prices);