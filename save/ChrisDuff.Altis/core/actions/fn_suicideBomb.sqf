/*
	ALAH SNACKBAR!
        Created By: TAW_Tonic
        Edited By: Sebastien Scibilia
        Tested and Approved by: Capt. Fitzsimmons and 617th PMC
*/
private["_test"];
if(vest player != "V_HarnessOGL_gry") exitWith {};

_test = "Bo_Mk82" createVehicle [0,0,9999];
_test setPos (getPos player);
_test setVelocity [100,0,0];
if(alive player) then {player setDamage 1;};