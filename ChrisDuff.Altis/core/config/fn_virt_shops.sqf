/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Markt",["water","rabbit","apple","redgull","tbacon","lockpick","handcuffkey","pickaxe","fuelF","peach","storagesmall","storagebig","uwsl"]]};
	case "total_market": {["Station Essence Total",["water","apple","peach","redgull","fuelF"]]};
	case "rebel": {["Rebel Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","handcuffs","handcuffkeys"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter","handcuffs","handcuffkeys"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Marché Gendarmerie",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","mauer","mauer2","handcuffs","handcuffkeys"]]};
	case "med": {["Marché Gendarmerie",["donuts","coffee","water","rabbit","apple","redgull","fuelF","mauer","mauer2","handcuffs","handcuffkeys"]]};
	case "cement": {["Revendeur de Ciment",["cement"]]};
	case "gold": {["Trader D'Or",["goldbar"]]};
    case "Revendeur_1": {["Recelleur d'objets volés",["objects"]]};
    case "organ": {["Organ Dealer",["kidney"]]};
};