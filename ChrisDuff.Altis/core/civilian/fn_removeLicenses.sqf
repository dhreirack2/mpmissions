/*
	File: fn_removeLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for stripping certain licenses off of civilians as punishment.
*/
private["_state"];
_state = [_this,0,1,[0]] call BIS_fnc_param;

switch (_state) do
{
	//Death while being wanted
	case 0:
	{
		license_civ_rebel = false;
		license_civ_driver = false;
		license_civ_heroin = false;
		license_civ_marijuana = false;
		license_civ_coke = false;
	};
	
	//Jail licenses
	case 1:
	{
		license_civ_gun = false;
		license_civ_driver = false;
	};
	
	//Remove motor vehicle licenses
	case 2:
	{
		serverCommand format ['#kick %1', player];
	};
	
	//Killing someone while owning a gun license
	case 3:
	{
		hint "Tu viens de tuer quelqu'un ! Fier de toi ? Assassin !";
	};
};

// Revoking Licenses
    
    // Permis de Conduire
    case 10:
    {
        license_civ_driver = false;
        hint localize "STR_Civ_RevokeLicense_Driver";
    };
    // Permis de Camions
    case 11:
    {
        license_civ_truck = false;
        hint localize "STR_Civ_RevokeLicense_Truck";
    };
    // Brevet de Pilote
    case 12:
    {
        license_civ_air = false;
        hint localize "STR_Civ_RevokeLicense_Pilot";
    };
    // Permis de Bateau
    case 13:
    {
        license_civ_boat = false;
        hint localize "STR_Civ_RevokeLicense_Boating";
    };
    // Permis de plongée
    case 14:
    {
        license_civ_dive = false;
        hint localize "STR_Civ_RevokeLicense_Diving";
    };
    // Licence de Taxi
    case 15:
    {
        license_civ_taxi = false;
        hint localize "STR_Civ_RevokeLicense_Taxi";
    };
    // Toutes les licences
    case 16:
    {
        license_civ_driver = false;
        license_civ_truck = false;
        license_civ_air = false;
        license_civ_boat = false;
        license_civ_air = false;
        license_civ_dive = false;
        license_civ_taxi = false;
        hint localize "STR_Civ_RevokeLicense_AllMotor";
    };
    // Permis de port d'armes
    case 17:
    {
        license_civ_gun = false;
        hint localize "STR_Civ_RevokeLicense_Firearm";
    };