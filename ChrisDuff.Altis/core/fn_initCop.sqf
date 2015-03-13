#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in ["cop_99"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

switch (__GETC__(life_coplevel)) do {
	case 1: {life_paycheck = life_paycheck + 500;}; // Adjoint
	case 2: {life_paycheck = life_paycheck + 750;}; // Brigadier
	case 3: {life_paycheck = life_paycheck + 1000;}; // Adjudant
	case 4: {life_paycheck = life_paycheck + 1250;}; // Major
	case 5: {life_paycheck = life_paycheck + 1500;}; // Lieutenant
	case 6: {life_paycheck = life_paycheck + 1750;}; // Capitaine
	case 7: {life_paycheck = life_paycheck + 2000;}; // Commandant
	case 8: {life_paycheck = life_paycheck + 2250;}; // Colonel
	case 9: {life_paycheck = life_paycheck + 2500;}; // Général
};

player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)};
waitUntil{isNull (findDisplay 38500)};

[] execVM "spawnanim.sqf";