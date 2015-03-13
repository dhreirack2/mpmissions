/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound "drink";
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound "soda";
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
    
    case (_item == "mauer"):
	{
		if(!isNull life_mauer) exitWith {hint "Vous avez déjà une barrière!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_mauer;
		};
	};

	case (_item == "mauer2"):
	{
		if(!isNull life_mauer2) exitWith {hint "Vous avez déjà une grande barrière!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_mauer2;
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
		playSound "eat";
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};

	case (_item == "marijuana"):
	{
    	if(([false,_item,1] call life_fnc_handleInv)) then
    	{
        	[] spawn life_fnc_weed;
        	playSound "Weed";
    	};
	};
	case (_item == "uwsl"): {
		if (("Land_Wreck_Traw_F" == typeOf cursorTarget) OR ("Land_Wreck_Traw2_F" == typeOf cursorTarget)&&([false,_item,1] call life_fnc_handleInv)) then {
			_ship = cursorTarget getVariable "opened";
			_ship_obj = cursorTarget;
			if (_ship) then {hint "Das Schiff wurde bereits geoeffnet!"};
			if (!_ship) then {
				hint "Sprengladung angebracht, entferne dich schnell vom Schiffswrack!";
				playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", _ship_obj];
				sleep 10;
				"M_NLAW_AT_F" createVehicle [getPos _ship_obj select 0, getPos _ship_obj select 1, 0];
				schiffwoffen = true;
				publicVariableServer "schiffwoffen";
			};
		};
	};
	case (_item == "kidney"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player setVariable["missingOrgan",false,true];
			life_thirst = 100;
			life_hunger = 100;
			player setFatigue .5;
		};
	};
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;