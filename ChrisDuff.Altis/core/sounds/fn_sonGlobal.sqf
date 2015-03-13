private ["_source","_son","_distance"];
_source = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_son = [_this,1,"",[""]] call BIS_fnc_param;

if (isNull _source OR _son == "") exitWith {};
_distance = player distance _source;

if (_distance <= 35) then{
	_source say3D _son;
};