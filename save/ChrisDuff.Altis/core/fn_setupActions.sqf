/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		life_actions = life_actions + [player addAction["ALAH SNACKBAR!",life_fnc_suicideBomb,"",0,false,false,"",'vest player == "V_HarnessOGL_gry" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
		life_actions = life_actions + [player addAction["<t color='#ADFF2F'>Bouchon d'oreille on/off</t>",{if (soundVolume != 1) then {1 fadeSound 1;} else {1 fadeSound 0.4;};},"",-6,false,false,"",'vehicle player != player || soundVolume != 1']];
// take them organs
		life_actions = life_actions + [player addAction["Prendre un organe.",life_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
	};
                                                        
    case west:
	{
        //Clés universelles véhicules
        life_actions = life_actions + [player addAction["<t color='#55aaff'>Conduire en tant que Gendarme</t>",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#55aaff'>Monter en tant que Gendarme</t>",life_fnc_copEnter,"passenger",180,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#55aaff'>Commander en tant que Gendarme</t>",life_fnc_copEnter,"commander",180,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5 && ((cursorTarget isKindOf "C_Offroad_01_F")||(cursorTarget isKindOf "B_MRAP_01_hmg_F")||(cursorTarget isKindOf "I_MRAP_03_F")||(cursorTarget isKindOf "B_APC_Wheeled_01_cannon_F")||(cursorTarget isKindOf "B_Heli_Attack_01_F"))']];
		life_actions = life_actions + [player addAction["Descendre",life_fnc_copEnter,"exit",149,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
		//Métro / Voyage Rapide
        life_actions = life_actions + [player addAction["<t color='#FFFF33'>Métro</t>",life_fnc_spawnMenu,"",0,false,false,"",'{side _x == west} count playableUnits <= 8 && ((player distance (getMarkerPos "police_hq_1") < 30) OR  (player distance (getMarkerPos "police_hq_2") < 30) OR (player distance (getMarkerPos "cop_spawn_3") < 30) OR  (player distance (getMarkerPos "cop_spawn_1") < 30) OR  (player distance (getMarkerPos "cop_spawn_2") < 30)) ']];
        // Prendre barrière
		life_actions = life_actions + [player addAction["<t color='#B9121B'>Prendre Cône</t>",life_fnc_packupmauer,"",0,false,false,"",' _mauer = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0; !isNil "_mauer" && !isNil {(_mauer getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#55ff7f'>Prendre Barriére</t>",life_fnc_packupmauer2,"",0,false,false,"",' _mauer2 = nearestObjects[getPos player,["RoadBarrier_small_F"],8] select 0; !isNil "_mauer2" && !isNil {(_mauer2 getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#ADFF2F'>Bouchon d'oreille on/off</t>",{if (soundVolume != 1) then {1 fadeSound 1;} else {1 fadeSound 0.2;};},"",-6,false,false,"",'vehicle player != player || soundVolume != 1']];
		//Saisir Objets
		life_actions = life_actions + [player addAction["Saisir objets",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']];
	};

	case independent:
	{
        // Prendre barrière
		life_actions = life_actions + [player addAction["<t color='#B9121B'>Prendre Cône</t>",life_fnc_packupmauer,"",0,false,false,"",' _mauer = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0; !isNil "_mauer" && !isNil {(_mauer getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#55ff7f'>Prendre Barriére</t>",life_fnc_packupmauer2,"",0,false,false,"",' _mauer2 = nearestObjects[getPos player,["RoadBarrier_small_F"],8] select 0; !isNil "_mauer2" && !isNil {(_mauer2 getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#ADFF2F'>Bouchon d'oreille on/off</t>",{if (soundVolume != 1) then {1 fadeSound 1;} else {1 fadeSound 0.2;};},"",-6,false,false,"",'vehicle player != player || soundVolume != 1']];
		//Saisir Objets
		life_actions = life_actions + [player addAction["Saisir objets",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']];
	};
};