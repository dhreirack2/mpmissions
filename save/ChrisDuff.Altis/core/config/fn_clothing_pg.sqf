/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Boutique - Private Global Security"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_PMC_CombatUniformLS_ChckDBS_GPSB","Chemise Blanche",0],
			["U_PMC_CombatUniformLS_ChckLB_GPBB","Poloshirt Blue",0],
			["U_PMC_CombatUniformLS_BSSPBB","Poloshirt Burgundy",0],
			["U_PMC_BluPolo_BgPants","Poloshirt Red/White",0],
			["U_PMC_WhtPolo_BluPants","Poloshirt Salmon",0],
			["U_PMC_RedPlaidShirt_DenimCords","Poloshirt stripped",0],
			["U_PMC_BlkTShirt_DJeans","Poloshirt Tricolor",0],
			["U_PMC_BlckPolo_BluPants","Rag tagged clothes",0]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Capbw_pmc","Bonnet noir",0],
			["H_Booniehat_rgr","Chapeau",0],
			["H_Capbw_tan_pmc","Casquette en arrière",0]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Bandanna_blk",nil,125],
			["G_Shades_Black",nil,25],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_PlateCarrier1_PMC_blk",nil,0],
			["V_PlateCarrier1_PMC_rgr",nil,0]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};