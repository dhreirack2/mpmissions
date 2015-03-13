/*
    File: fn_mauer2.sqf
    Author: Peter. R
    
    Description:
    Create a barrier on the ground.
*/
private["_position","_mauer2"];
_mauer2 = "RoadBarrier_small_F" createVehicle [0,0,0];
_mauer2 attachTo[player,[0,5.5,0.2]];
_mauer2 setDir 90;
_mauer2 setVariable["item","mauer2Deployed",true];

life_action_mauer2Deploy = player addAction["<t color='#ffffff'>Poser barrière</t>",{if(!isNull life_mauer2) then {detach life_mauer2; life_mauer2 = ObjNull;}; player removeAction life_action_mauer2Deploy; life_action_mauer2Deploy = nil;},"",999,false,false,"",'!isNull life_mauer2'];
life_mauer2 = _mauer2;
waitUntil {isNull life_mauer2};
if(!isNil "life_action_mauer2Deploy") then {player removeAction life_action_mauer2Deploy;};
if(isNull _mauer2) exitWith {life_mauer2 = ObjNull;};
_mauer2 setPos [(getPos _mauer2 select 0),(getPos _mauer2 select 1),0];
_mauer2 allowDamage false;
_mauer2 enableSimulation false;