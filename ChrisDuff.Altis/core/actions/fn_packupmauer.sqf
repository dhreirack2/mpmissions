/*
    File: fn_packupmauer.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: Peter. R

    Description:
    Packs up the barrier
*/
private["_mauer"];
_mauer = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0;
if(isNil "_mauer") exitWith {};

if(([true,"mauer",1] call life_fnc_handleInv)) then
{
    player removeAction life_action_mauerPickup;
    life_action_mauerPickup = nil;
    deleteVehicle _mauer;
};