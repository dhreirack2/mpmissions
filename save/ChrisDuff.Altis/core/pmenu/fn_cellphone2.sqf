private["_cell"];
_cell = false;
{if (_x find "ItemRadio" >= 0 ) then {_cell = true;} } forEach assignedItems player;


if(_cell) then {
    createDialog "Life_cell_phone";
}else{
    hint "Pas de telephone. Tu peux en acheter une au magasin.";
};