/*
    File: fn_fatigueReset.sqf
    Author: Itsyuka
    Ajouté par dhrei

    Description:
    Empêche les variations de la fatigue une fois son taux atteint.
*/

[] spawn {
    while {true} do {
        if (life_fatigue < getFatigue player) then {
            player setFatigue life_fatigue;
        };
        sleep 1.5;
    };
};