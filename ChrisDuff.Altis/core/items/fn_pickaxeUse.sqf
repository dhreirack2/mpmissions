/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];
switch (true) do
{
	case (player distance (getMarkerPos "lead_1") < 50): {_mine = "copperore"; _val = 2;};
	case (player distance (getMarkerPos "lead_2") < 50): {_mine = "copperore"; _val = 2;};
	case (player distance (getMarkerPos "iron_1") < 50): {_mine = "ironore"; _val = 1;};
	case (player distance (getMarkerPos "iron_2") < 50): {_mine = "ironore"; _val = 1;};
	case (player distance (getMarkerPos "salt_1") < 120) : {_mine = "salt"; _val = 2;};
	case (player distance (getMarkerPos "sand_1") < 75) : {_mine = "sand"; _val = 2;};
	case (player distance (getMarkerPos "diamond_1") < 50): {_mine = "diamond"; _val = 1;};
	case (player distance (getMarkerPos "oil_1") < 50) : {_mine = "oilu"; _val = 1;};
	case (player distance (getMarkerPos "oil_2") < 50) : {_mine = "oilu"; _val = 1;};
	case (player distance (getMarkerPos "oil_3") < 50) : {_mine = "oilu"; _val = 1;};
	case (player distance (getMarkerPos "rock_1") < 50): {_mine = "rock"; _val = 2;};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {/*hint localize "STR_ISTR_Pick_NotNear"*/};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	player say3D "Pioche";
	sleep 2.5;
};

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_ISTR_Pick_Success",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;

//ancien son de Pioche
//	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
//	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
//	[[player, "Pioche",10],"life_fnc_playSound",true,false] spawn life_fnc_MP;
//	sleep 2.5;