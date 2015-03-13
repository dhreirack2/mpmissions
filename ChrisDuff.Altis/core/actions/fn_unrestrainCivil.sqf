/*
	Florian "Flolax" Moreno
	File: fn_unrestrainCivil.sqf
*/
private["_unit", "_tirage"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !(_unit getVariable["restrained",FALSE])) exitWith {}; //Error check?

_tirage = ceil(random 1);

if(life_inv_handcuffkeys > 0) then{
	life_action_inUse = true;
	for "_i" from 0 to 2 do
	{
		player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
		sleep 2.5;
	};

	if (_tirage == 1) then 	{
		_unit setVariable["restrained",FALSE,TRUE];
		_unit setVariable["Escorting",FALSE,TRUE];
		_unit setVariable["transporting",FALSE,TRUE];
		detach _unit;
	}else{
		hint "Votre kit cest fracturé sa race, veuillez reommencer";
	};
	life_action_inUse = false;
}else{
	hint "Vous navez pas de kit de demonetage";
};

//[[0,"STR_NOTF_Unrestrain",true,[_unit getVariable["realname",name _unit], profileName]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;