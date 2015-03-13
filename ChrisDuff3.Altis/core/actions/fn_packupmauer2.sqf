/*
    File: fn_packupmauer.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: Peter. R

    Description:
    Packs up the barrier
*/
private["_mauer2"];
_mauer2 = nearestObjects[getPos player,["RoadBarrier_small_F"],8] select 0;
if(isNil "_mauer2") exitWith {};

if(([true,"mauer2",1] call life_fnc_handleInv)) then
{
    player removeAction life_action_mauerPickup2;
    life_action_mauerPickup2 = nil;
    deleteVehicle _mauer2;
};