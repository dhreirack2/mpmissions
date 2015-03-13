/*
	File: fn_blackjack.sqf
	Author: Florian "Flolax" Moreno

	You want to use my code ? Contact me by mail.
	@Contact useyourdev@florianmoreno.fr
	@Version 1.0
	
	Description:
	Système de blackjack avec résultat totalement aléatoire, 3,33 % de chance de gagner 
*/
_prix = 3000;

if(life_cash < _prix) exitWith { hint parseText format [(localize "STR_Jeux_Blackjack_Fonds_Insuffisants"), player getVariable["realname",name player], _prix]; };
if(life_action_inUse) exitWith { hint parseText format [(localize "STR_Jeux_Blackjack_Carte_En_Main")]; };
removeAllActions BlackJack_Croupier_1;

life_cash = life_cash - _prix;
life_action_inUse = true;

_timer = time + (1 * 5);	
_croupier = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

while {true} do
{
	_countDown = if(round(_timer - time) > 60) then {
		format["%1 minute(s)",round(round(_timer - time) / 60)]
	} else {
		format["%1 second(s)",round(_timer - time)]
	};

	hint parseText format["Votre tour sera dans : %1 \n Distance: %2",_countDown,round(player distance _croupier)];

	if(!alive player) exitWith 	{ hint parseText format [(localize "STR_Jeux_Blackjack_Impossible_Joueur_Mort")]; };
	if(player distance _croupier > 5) exitWith 	{ hint parseText format [(localize "STR_Jeux_Blackjack_Impossible_Joueur_Loin")]; };
	if(life_istazed) exitWith 	{ hint parseText format [(localize "STR_Jeux_Blackjack_Impossible_Joueur_Taze")]; };

	if((round(_timer - time)) < 1) exitWith {
		_tirage = ceil(random 10);
		if (_tirage == 0) then 	{  	gain = 0; 		hint parseText format [(localize "STR_Jeux_Blackjack_Perdu"),"11",_prix]; 	};
		if (_tirage == 1) then 	{  	gain = 0; 		hint parseText format [(localize "STR_Jeux_Blackjack_Perdu"),"18",_prix]; 	};
		if (_tirage == 2) then 	{  	gain = 0; 		hint parseText format [(localize "STR_Jeux_Blackjack_Perdu"),"15",_prix];  	};
		if (_tirage == 3) then 	{  	gain = 0; 		hint parseText format [(localize "STR_Jeux_Blackjack_Perdu"),"14",_prix]; 	};
		if (_tirage == 4) then 	{  	gain = 0; 		hint parseText format [(localize "STR_Jeux_Blackjack_Perdu"),"16",_prix]; 	};
		if (_tirage == 5) then 	{  	gain = 0; 		hint parseText format [(localize "STR_Jeux_Blackjack_Perdu"),"12",_prix]; 	};
		if (_tirage == 6) then 	{  	gain = 0; 		hint parseText format [(localize "STR_Jeux_Blackjack_Perdu"),"13",_prix]; 	};
		if (_tirage == 7) then 	{  	gain = 0; 		hint parseText format [(localize "STR_Jeux_Blackjack_Perdu"),"17",_prix]; 	};
		if (_tirage == 8) then 	{  	gain = 3000;	hint parseText format [(localize "STR_Jeux_Blackjack_Gagner"),"19",gain]; 	};
		if (_tirage == 9) then 	{  	gain = 7500;	hint parseText format [(localize "STR_Jeux_Blackjack_Gagner"),"20",gain]; 	};
		if (_tirage == 10) then {	gain = 15000; 	hint parseText format [(localize "STR_Jeux_Blackjack_Gagner"),"21",gain]; 	};

		_total = gain;
		life_cash = life_cash + _total;
	};
};

life_action_inUse = false;
BlackJack_Croupier_1 addAction["Jouer au BlackJack (3000 €)",life_fnc_blackjack];