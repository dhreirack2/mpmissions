/*
    File: fn_mauer.sqf
    Author: Peter. R
    
    Description:
    Create a barrier on the ground.
*/
private["_position","_mauer"];
_mauer = "RoadCone_L_F" createVehicle [0,0,0];
_mauer attachTo[player,[0,5.5,0.2]];
_mauer setDir 90;
_mauer setVariable["item","mauerDeployed",true];

life_action_mauerDeploy = player addAction["<t color='#ffffff'>Poser barrière</t>",{if(!isNull life_mauer) then {detach life_mauer; life_mauer = ObjNull;}; player removeAction life_action_mauerDeploy; life_action_mauerDeploy = nil;},"",999,false,false,"",'!isNull life_mauer'];
life_mauer = _mauer;
waitUntil {isNull life_mauer};
if(!isNil "life_action_mauerDeploy") then {player removeAction life_action_mauerDeploy;};
if(isNull _mauer) exitWith {life_mauer = ObjNull;};
_mauer setPos [(getPos _mauer select 0),(getPos _mauer select 1),0];
_mauer allowDamage false;
_mauer enableSimulation false;