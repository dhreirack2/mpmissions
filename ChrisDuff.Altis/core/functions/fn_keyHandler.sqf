/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys","_Automobile","_VitesseX","_player","_cell","_weap"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;
_player = player;

_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["restrained",false])}) exitWith {
	true;
};

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse && !(player getVariable "surrender")) then {
		[] spawn 
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

switch (_code) do
{	
	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;}};
			case civilian: {if(!visibleMap) then {[] spawn life_fnc_gangMarkers;}};
		};
	};
	
	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchcamera cameraView;
		};
		
		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
			if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				player selectWeapon life_curWep_h;
			};
		};
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse && !(player getVariable "surrender")) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	
	//Restraining (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};
		switch (playerSide) do
        {
            case west:
            {
            if(_shift && !(player getVariable["restrained",false]) && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [west,civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && !life_knockout&& speed cursorTarget < 1) then
                {
                    if(life_inv_handcuffs > 0) then
                    {
                        [] call life_fnc_restrainAction;
                        systemChat localize "STR_NOTF_RestrainedPerson";
                    }else{
                        systemChat "Vous n'avez pas de menotte";
                    };
                };
            };
            case independent:
            {
            if(_shift && !(player getVariable["restrained",false]) && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [west,civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && !life_knockout&& speed cursorTarget < 1) then
                {
                    if(life_inv_handcuffs > 0) then
                    {
                        [] call life_fnc_restrainAction;
                        systemChat localize "STR_NOTF_RestrainedPerson";
                    }else{
                        systemChat "Vous n'avez pas de menotte";
                    };
                };
            };
            case civilian:
            {
            if(_shift && !(player getVariable["restrained",false]) && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [west,civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && !life_knockout&& speed cursorTarget < 1) then
                {
                    if(life_inv_handcuffs > 0) then
                    {
                        [] call life_fnc_restrainAction;
                        systemChat localize "STR_NOTF_RestrainedPerson";
                    }else{
                        systemChat "Vous n'avez pas de menotte";
                    };
                };
            };
        };
	};
	
	//Knock out, this is experimental and yeah...
	case 46:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;

				_cell = false;
				{if (_x find "tf_anprc152" >= 0 ) then {_cell = true;_weap = _x;} } forEach assignedItems cursorTarget;


					if(_cell) then {
					cursorTarget removeweapon _weap;
					_defenceplace1 = "ItemRadio" createVehicle (player modelToWorld[0,0,0]);
				} else { hint "La personne n'avait pas de téléphone!"};

			};
		};
	};

	// SHIFT + G => Main sur la tête
    case 34:
    {
     	if(_shift) then {_handled = true;};
     		if(_shift) then {
	        if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then
	         {
	             if (player getVariable ["surrender", false]) then
	             {
	                player setVariable ["surrender", false, true];
	             } else {
	                 		[] spawn life_fnc_surrender;
	             		};
	         };
	     };
    };

	//T Key (Trunk)
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] spawn life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorTarget isKindOf "Land_Wreck_Traw_F" OR cursorTarget isKindOf "Land_Wreck_Traw2_F" OR cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "House_F") && player distance cursorTarget < 10 && vehicle player == player && alive cursorTarget) then
				{
					if(cursorTarget in life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) then
					{
						[cursorTarget] spawn life_fnc_openInventory;
					};
					if (cursorTarget isKindOf "Land_Wreck_Traw_F" OR cursorTarget isKindOf "Land_Wreck_Traw2_F") then {
						[cursorTarget] spawn life_fnc_openInventory;
					};
				};
			};
		};
	};
	//L Key?
	case 38: 
	{
		//If cop run checks for turning lights on.
		if(_shift && playerSide in [west,independent]) then {
			if(vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F"]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					if(playerSide == west) then {
						[vehicle player] call life_fnc_sirenLights;
					} else {
						[vehicle player] call life_fnc_medicSirenLights;
					};
					_handled = true;
				};
			};
		};
		
		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	/*
	//ANTI ALT F4
	case 62:
	{
		if(_alt) then {
			exitwith {
				[[0,format["ATTENTION INTERDIT ! - %1 A ALT F4 - ATTENTION INTERDIT !", profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
				[[0,format["ATTENTION INTERDIT ! - %1 A ALT F4 - ATTENTION INTERDIT !", profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
				[[0,format["ATTENTION INTERDIT ! - %1 A ALT F4 - ATTENTION INTERDIT !", profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
				[[0,format["ATTENTION INTERDIT ! - %1 A ALT F4 - ATTENTION INTERDIT !", profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
				_handled=false;
			};
		};
	};

	//ANTI CTRL + ALT + DEL
	case 211:
	{
		if(_ctrlKey && _alt) then {
			exitwith {
				[[0,format["ATTENTION INTERDIT ! - %1 A CTRL + ALT + DEL - ATTENTION INTERDIT !", profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
				[[0,format["ATTENTION INTERDIT ! - %1 A CTRL + ALT + DEL - ATTENTION INTERDIT !", profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
				[[0,format["ATTENTION INTERDIT ! - %1 A CTRL + ALT + DEL - ATTENTION INTERDIT !", profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
				[[0,format["ATTENTION INTERDIT ! - %1 A CTRL + ALT + DEL - ATTENTION INTERDIT !", profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
				_handled=false;
			};
		};
	};

	//ANTI CTRL + ESC
	case 1:
	{
		if(_ctrlKey) then {
			exitwith {
				[[0,format["ATTENTION INTERDIT ! - %1 A CTRL + ESC - ATTENTION INTERDIT !", profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
				[[0,format["ATTENTION INTERDIT ! - %1 A CTRL + ESC - ATTENTION INTERDIT !", profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
				[[0,format["ATTENTION INTERDIT ! - %1 A CTRL + ESC - ATTENTION INTERDIT !", profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
				[[0,format["ATTENTION INTERDIT ! - %1 A CTRL + ESC - ATTENTION INTERDIT !", profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
				_handled=false;
			};
		};
	};*/

	//Y Player Menu
	case 21:
	{
		if(!_alt && !_ctrlKey && !dialog && !(player getVariable "surrender")) then
		{
			[] call life_fnc_p_openMenu;
		};
	};

	if((_code in (actionKeys "SelectAll") || _code in (actionKeys "ForceCommandingMode"))) exitWith {};

	//F Key
	case 33:
	{
		if(playerSide in [west,independent] && vehicle player != player && !life_siren_active && ((driver vehicle player) == player)) then
		{
			[] spawn
			{
				life_siren_active = true;
				sleep 4.7;
				life_siren_active = false;
			};
			_veh = vehicle player;
			if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
			if((_veh getVariable "siren")) then
			{
				titleText [localize "STR_MISC_SirensOFF","PLAIN"];
				_veh setVariable["siren",false,true];
			}
				else
			{
				titleText [localize "STR_MISC_SirensON","PLAIN"];
				_veh setVariable["siren",true,true];
				if(playerSide == west) then {
					[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
				} else {
					//I do not have a custom sound for this and I really don't want to go digging for one, when you have a sound uncomment this and change medicSiren.sqf in the medical folder.
					[[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
				};
			};
		};
	};

	//B Ouverture des barrières
	case 48:
	{
		if (!_shift && !_alt && !_ctrlKey && (playerSide == west) && (vehicle player != player)) then {
			[] call life_fnc_openBarriere;
		};
	};
	
	//U Key
	case 22:
	{
		if(!_alt && !_ctrlKey) then {
			if(vehicle player == player) then {
				_veh = cursorTarget;
			} else {
				_veh = vehicle player;
			};
			
			if(_veh isKindOf "House_F" && playerSide == civilian) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(_door == 0) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
					if(_locked == 0) then {
						_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat localize "STR_House_Door_Lock";
					} else {
						_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat localize "STR_House_Door_Unlock";
					};
				};
			} else {
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8) then {
					if(_locked == 2) then {
						if(local _veh) then {
							_veh lock 0;
						} else {
							[[_veh,0],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};
						systemChat localize "STR_MISC_VehUnlock";
                        [[_veh, "car_unlock",10],"life_fnc_playSound",true,false] spawn life_fnc_MP;
					} else {
						if(local _veh) then {
							_veh lock 2;
						} else {
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};	
						systemChat localize "STR_MISC_VehLock";
                        [[_veh, "car_unlock",10],"life_fnc_playSound",true,false] spawn life_fnc_MP;
					};
				};
			};
		};
	};
	//Takwondo(Traditional Martial arts in korea)(Shift + Num 1)
				case 79:
				{
					if(_shift) then {_handled = true;};
						if ((_shift) && (vehicle player == player)) then
						{
							cutText [format["Takwondo!!!"], "PLAIN DOWN"];
							player playMove "AmovPercMstpSnonWnonDnon_exerciseKata";
						};
				};

				//Kneebend Slow(Shift + Num 2)
				case 80:
				{
					if(_shift) then {_handled = true;};
						if ((_shift) && (vehicle player == player)) then
						{
							cutText [format["KneeBend Slow baby~"], "PLAIN DOWN"];
							player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";
						};
				};

				//Kneebend Fast(Shift + Num 3)
				case 81:
				{
					if(_shift) then {_handled = true;};
						if ((_shift) && (vehicle player == player)) then
						{
							cutText [format["KneeBend more Hard!!!Move!!Move!!"], "PLAIN DOWN"];
							player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB";
						};
				};

				//Pushup(Shift + Num 4)
				case 75:
				{
					if(_shift) then {_handled = true;};
						if ((_shift) && (vehicle player == player)) then
						{
							cutText [format["Pushup!!!!!!"], "PLAIN DOWN"];
							player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";
						};
				};
				case 71:
				{
					
					if((!life_action_inUse) && (vehicle player == player) ) then
					{
					{
						_str = [_x] call life_fnc_varToStr;
						_val = missionNameSpace getVariable _x;
						if(_val > 0 ) then
						{
							if( _str == "Pickaxe" || _str == "pickaxe" ) then
							{
								[] spawn life_fnc_pickAxeUse;
							};
						};
					} foreach life_inv_items;
		}
	};
};

_handled;