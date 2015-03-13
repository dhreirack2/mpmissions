#include <macro.h>
/*
  File: fn_weaponShopCfg.sqf
  Author: Bryan "Tonic" Boardwine
  
  Description:
  Master configuration file for the weapon shops.
  
  Return:
  String: Close the menu
  Array: 
  [Shop Name,
  [ //Array of items to add to the store
    [classname,Custom Name (set nil for default),price]
  ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
  case "cop_basic":
      {
            switch(true) do
            {
                  case (playerSide != west): {"Vous n'êtes pas Gendarme"};
                  default
                  {
                        ["Equipement Gendarmerie",
                              [
                                    ["DDOPP_X26","Tazer",1000],
                                    ["DDOPP_1Rnd_X26","Recharge Tazer",250],
                                    ["DDOPP_X3","Tazer 3 Coups",3000],
                                    ["DDOPP_3Rnd_X3","Recharge Tazer",250],
                                    ["FirstAidKit",nil,500],
                                    ["ToolKit",nil,0],
                                    ["ItemGPS",nil,0],
                                    ["ItemCompass",nil,0],
                                    ["ItemRadio","Téléphone",100],
                                    ["NVGoggles_OPFOR",nil,0],
                                    ["Rangefinder",nil,0],
                                    ["ItemMap",nil,0],
                                    ["MiniGrenade","Flashbang",0],
                                    ["SmokeShell","Fumigène Blanche",0],
                                    ["SmokeShellRed","Fumigène Rouge",0],
                                    ["SmokeShellGreen","Fumigène Verte",0],
                                    ["SmokeShellPurple","Fumigène Violet",0],
                                    ["SmokeShellBlue","Fumigène Bleu",0],
                                    ["SmokeShellOrange","Fumigène Orange",0],
                                    ["SmokeShellYellow","Gaz Lacrimo",0]
                              ]
                        ];
                  };
            };
      };

      case "cop_patrol":
      {
            switch(true) do
            {
                  case (playerside !=west):{"Vous n'êtes pas Policier !"};
                  case (__GETC__(life_coplevel) == 0): {"Vous n'êtes pas un officier inscrit sur la liste!"};
                  case (__GETC__(life_coplevel) == 1):
                  {
                        ["Armurerie Adjoint",
                        [
                        ["optic_ACO_grn_smg",nil,0],
                        ["optic_Aco",nil,0],
                        ["arifle_mas_mp5","Mp5 A5",0],
                        ["30Rnd_mas_9x21_Stanag",nil,0],
                        ["SMG_02_F","Sting 9mm",0],
                        ["30Rnd_9x21_Mag",nil,0]
                        ]
                        ];
                  };
                  case (__GETC__(life_coplevel) == 2):
                  {
                        ["Armurerie Brigadier",
                              [
                              ["optic_MRCO","Viseur Mrco",0],
                              ["optic_Hamr","Viseur Rco",0],
                              ["optic_Aco","Viseur Aco",0],
                              ["optic_mas_aim","Viseur Aimpoint",0],       
                              ["R3F_AIMPOINT",nil,0],
                              ["R3F_EOTECH",nil,0],
                              ["R3F_LAMPE_SURB",nil,0],
                              ["acc_flashlight",nil,0],
                              ["acc_pointer_IR",nil,0],
                              ["arifle_mas_mp5","Mp5 A5",0],
                        ["30Rnd_mas_9x21_Stanag",nil,0],
                        ["SMG_02_F","Sting 9mm",0],
                        ["30Rnd_9x21_Mag",nil,0],
                              ["arifle_mas_m1014",nil,0],
                              ["7Rnd_mas_12Gauge_Slug",nil,0],
                              ["R3F_Famas_surb",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["srifle_mas_m24",nil,0],
                              ["5Rnd_mas_762x51_Stanag",nil,0]

                              ]
                        ];
                  };
                  case (__GETC__(life_coplevel) == 3):
                  {
                        ["Armurerie Adjudant",
                        [
                              ["optic_MRCO","Viseur Mrco",0],
                              ["optic_Hamr","Viseur Rco",0],
                              ["optic_Aco","Viseur Aco",0],
                              ["optic_mas_aim","Viseur Aimpoint",0],       
                              ["R3F_AIMPOINT",nil,0],
                              ["R3F_EOTECH",nil,0],
                              ["optic_mas_DMS",nil,850],
                              ["R3F_LAMPE_SURB",nil,0],
                              ["acc_flashlight",nil,0],
                              ["acc_pointer_IR",nil,0],
                              ["arifle_mas_mp5","Mp5 A5",0],
                        ["30Rnd_mas_9x21_Stanag",nil,0],
                        ["SMG_02_F","Sting 9mm",0],
                        ["30Rnd_9x21_Mag",nil,0],
                              ["arifle_mas_m1014",nil,0],
                              ["7Rnd_mas_12Gauge_Slug",nil,0],
                              ["R3F_Famas_surb",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["srifle_mas_m24",nil,0],
                              ["5Rnd_mas_762x51_Stanag",nil,0],
                              ["arifle_mas_l119",nil,0],
                              ["30Rnd_mas_556x45_Stanag",nil,0],
                              ["arifle_MX_F",nil,0],
                              ["30Rnd_65x39_caseless_mag",nil,0],
                              ["R3F_Famas_surb_HG",nil,0],
                              ["R3F_Famas_G2",nil,0],
                              ["R3F_30Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M_HG",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["LMG_mas_Mk200_F",nil,0],
                              ["200Rnd_mas_556x45_T_Stanag",nil,0],
                              ["R3F_FRF2",nil,0],
                              ["R3F_10Rnd_762x51_FRF2",nil,0]
                         ]
                        ];
                  };
                  case (__GETC__(life_coplevel) == 4):
                  {
                        ["Armurerie Major",
                        [
                        ["optic_MRCO","Viseur Mrco",0],
                              ["optic_Hamr","Viseur Rco",0],
                              ["optic_Aco","Viseur Aco",0],
                              ["optic_mas_aim","Viseur Aimpoint",0],  
                              ["optic_mas_zeiss_eo",nil,1000],     
                              ["R3F_AIMPOINT",nil,0],
                              ["R3F_EOTECH",nil,0],
                              ["R3F_LAMPE_SURB",nil,0],
                              ["acc_flashlight",nil,0],
                              ["acc_pointer_IR",nil,0],
                              ["arifle_mas_mp5","Mp5 A5",0],
                        ["30Rnd_mas_9x21_Stanag",nil,0],
                        ["SMG_02_F","Sting 9mm",0],
                        ["30Rnd_9x21_Mag",nil,0],
                              ["arifle_mas_m1014",nil,0],
                              ["7Rnd_mas_12Gauge_Slug",nil,0],
                              ["R3F_Famas_surb",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["srifle_mas_m24",nil,0],
                              ["5Rnd_mas_762x51_Stanag",nil,0],
                              ["arifle_mas_l119",nil,0],
                              ["30Rnd_mas_556x45_Stanag",nil,0],
                              ["arifle_MX_F",nil,0],
                              ["30Rnd_65x39_caseless_mag",nil,0],
                              ["R3F_Famas_surb_HG",nil,0],
                              ["R3F_Famas_G2",nil,0],
                              ["R3F_30Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M_HG",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["LMG_mas_Mk200_F",nil,0],
                              ["200Rnd_mas_556x45_T_Stanag",nil,0],
                              ["R3F_FRF2",nil,0],
                              ["R3F_10Rnd_762x51_FRF2",nil,0],
                        ["R3F_Famas_F1",nil,1500],
                        ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["arifle_MX_SW_F",nil,1500],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["srifle_mas_hk417",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["srifle_mas_sr25",nil,10000],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["R3F_Minimi","Minimi",15000],
                        ["R3F_200Rnd_556x45_MINIMI","Minutions Minimi",0]
                        ]
                        ];
                  };
                  case (__GETC__(life_coplevel) == 5):
                  {
                        ["Armurerie Lieutenant",
                              [
                              ["optic_MRCO","Viseur Mrco",0],
                              ["optic_Hamr","Viseur Rco",0],
                              ["optic_Aco","Viseur Aco",0],
                              ["optic_mas_aim","Viseur Aimpoint",0], 
                              ["optic_mas_zeiss_eo",nil,1000],        
                              ["R3F_AIMPOINT",nil,0],
                              ["R3F_EOTECH",nil,0],
                              ["R3F_LAMPE_SURB",nil,0],
                              ["acc_flashlight",nil,0],
                              ["acc_pointer_IR",nil,0],
                              ["arifle_mas_mp5","Mp5 A5",0],
                        ["30Rnd_mas_9x21_Stanag",nil,0],
                        ["SMG_02_F","Sting 9mm",0],
                        ["30Rnd_9x21_Mag",nil,0],
                              ["arifle_mas_m1014",nil,0],
                              ["7Rnd_mas_12Gauge_Slug",nil,0],
                              ["R3F_Famas_surb",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["srifle_mas_m24",nil,0],
                              ["5Rnd_mas_762x51_Stanag",nil,0],
                              ["arifle_mas_l119",nil,0],
                              ["30Rnd_mas_556x45_Stanag",nil,0],
                              ["arifle_MX_F",nil,0],
                              ["30Rnd_65x39_caseless_mag",nil,0],
                              ["R3F_Famas_surb_HG",nil,0],
                              ["R3F_Famas_G2",nil,0],
                              ["R3F_30Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M_HG",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["LMG_mas_Mk200_F",nil,0],
                              ["200Rnd_mas_556x45_T_Stanag",nil,0],
                              ["R3F_FRF2",nil,0],
                              ["R3F_10Rnd_762x51_FRF2",nil,0],
                        ["R3F_Famas_F1",nil,1500],
                        ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["arifle_MX_SW_F",nil,1500],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["srifle_mas_hk417",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["srifle_mas_sr25",nil,10000],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["R3F_Minimi","Minimi",15000],
                        ["R3F_200Rnd_556x45_MINIMI","Minutions Minimi",0],
                        ["1Rnd_SmokeOrange_Grenade_shell",nil,0],
                        ["1Rnd_SmokeBlue_Grenade_shell",nil,0],
                        ["1Rnd_SmokePurple_Grenade_shell",nil,0],
                        ["1Rnd_SmokeYellow_Grenade_shell",nil,0],
                        ["1Rnd_SmokeRed_Grenade_shell",nil,0],
                        ["arifle_MX_GL_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["arifle_MXC_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["R3F_Famas_F1_HG",nil,1000],
                        ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["arifle_mas_g3",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["R3F_HK417L",nil,1000],
                        ["R3F_20Rnd_762x51_HK417",nil,0],
                        ["arifle_mas_m4_m203c",nil,1000],
                        ["30Rnd_mas_556x45_Stanag",nil,0]
                              ]
                        ];
                  };
                  case (__GETC__(life_coplevel) == 6):
                  {
                        ["Armurerie Capitaine",
                              [
                              ["optic_MRCO","Viseur Mrco",0],
                              ["optic_Hamr","Viseur Rco",0],
                              ["optic_Aco","Viseur Aco",0],
                              ["optic_mas_aim","Viseur Aimpoint",0],  
                              ["optic_mas_zeiss_eo",nil,1000],       
                              ["R3F_AIMPOINT",nil,0],
                              ["R3F_EOTECH",nil,0],
                              ["R3F_LAMPE_SURB",nil,0],
                              ["acc_flashlight",nil,0],
                              ["acc_pointer_IR",nil,0],
                              ["arifle_mas_mp5","Mp5 A5",0],
                        ["30Rnd_mas_9x21_Stanag",nil,0],
                        ["SMG_02_F","Sting 9mm",0],
                        ["30Rnd_9x21_Mag",nil,0],
                              ["arifle_mas_m1014",nil,0],
                              ["7Rnd_mas_12Gauge_Slug",nil,0],
                              ["R3F_Famas_surb",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["srifle_mas_m24",nil,0],
                              ["5Rnd_mas_762x51_Stanag",nil,0],
                              ["arifle_mas_l119",nil,0],
                              ["30Rnd_mas_556x45_Stanag",nil,0],
                              ["arifle_MX_F",nil,0],
                              ["30Rnd_65x39_caseless_mag",nil,0],
                              ["R3F_Famas_surb_HG",nil,0],
                              ["R3F_Famas_G2",nil,0],
                              ["R3F_30Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M_HG",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["LMG_mas_Mk200_F",nil,0],
                              ["200Rnd_mas_556x45_T_Stanag",nil,0],
                              ["R3F_FRF2",nil,0],
                              ["R3F_10Rnd_762x51_FRF2",nil,0],
                        ["R3F_Famas_F1",nil,1500],
                        ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["arifle_MX_SW_F",nil,1500],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["srifle_mas_hk417",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["srifle_mas_sr25",nil,10000],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["R3F_Minimi","Minimi",15000],
                        ["R3F_200Rnd_556x45_MINIMI","Minutions Minimi",0],
                        ["1Rnd_SmokeOrange_Grenade_shell",nil,0],
                        ["1Rnd_SmokeBlue_Grenade_shell",nil,0],
                        ["1Rnd_SmokePurple_Grenade_shell",nil,0],
                        ["1Rnd_SmokeYellow_Grenade_shell",nil,0],
                        ["1Rnd_SmokeRed_Grenade_shell",nil,0],
                        ["arifle_MX_GL_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["arifle_MXC_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["R3F_Famas_F1_HG",nil,1000],
                        ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["arifle_mas_g3",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["R3F_HK417L",nil,1000],
                        ["R3F_20Rnd_762x51_HK417",nil,0],
                        ["arifle_mas_m4_m203c",nil,1000],
                        ["30Rnd_mas_556x45_Stanag",nil,0],
                        ["arifle_MXM_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["R3F_Famas_G2_HG",nil,1000],
                        ["R3F_30Rnd_556x45_FAMAS",nil,0],
                        ["srifle_GM6_F",nil,1000],
                        ["5Rnd_127x108_Mag",nil,0]
                              ]
                        ];
                  };
                  case (__GETC__(life_coplevel) == 7):
                  {
                        ["Armurerie Commandant",
                              [
                        ["optic_mas_Holosight_blk","Viseur Holographique",0],
                        ["optic_mas_Arco_blk","Viseur Arco noir",0],
                        ["optic_MRCO","Viseur Mrco",0],
                        ["optic_SOS","Viseur Sos",0],
                        ["optic_Hamr","Viseur Rco",0],
                        ["optic_LRPS","Viseur Lrps",0],
                        ["optic_DMS","Viseur Dms",0],
                        ["optic_Aco","Viseur Aco",0],
                        ["optic_mas_zeiss_eo",nil,1000],  
                        ["R3F_EOTECH",nil,0],
                        ["R3F_AIMPOINT",nil,0],
                        ["R3F_J4",nil,0],
                        ["optic_mas_acog_eo",nil,0],
                        ["optic_mas_DMS",nil,1000],
                        ["R3F_J8_MILDOT",nil,0],
                        ["R3F_J10_MILDOT",nil,0],
                        ["R3F_OB50",nil,0],
                        ["optic_mas_zeiss_eo",nil,0],
                        ["acc_flashlight",nil,0],
                        ["acc_pointer_IR",nil,0],
                        ["R3F_LAMPE_SURB",nil,0],
                        ["R3F_PIRAT",nil,0],


                        ["arifle_mas_mp5","Mp5 A5",0],
                        ["30Rnd_mas_9x21_Stanag",nil,0],
                        ["SMG_02_F","Sting 9mm",0],
                        ["30Rnd_9x21_Mag",nil,0],
                              ["arifle_mas_m1014",nil,0],
                              ["7Rnd_mas_12Gauge_Slug",nil,0],
                              ["R3F_Famas_surb",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["srifle_mas_m24",nil,0],
                              ["5Rnd_mas_762x51_Stanag",nil,0],
                              ["arifle_mas_l119",nil,0],
                              ["30Rnd_mas_556x45_Stanag",nil,0],
                              ["arifle_MX_F",nil,0],
                              ["30Rnd_65x39_caseless_mag",nil,0],
                              ["R3F_Famas_surb_HG",nil,0],
                              ["R3F_Famas_G2",nil,0],
                              ["R3F_30Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M_HG",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["LMG_mas_Mk200_F",nil,0],
                              ["200Rnd_mas_556x45_T_Stanag",nil,0],
                              ["R3F_FRF2",nil,0],
                              ["R3F_10Rnd_762x51_FRF2",nil,0],
                        ["R3F_Famas_F1",nil,1500],
                        ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["arifle_MX_SW_F",nil,1500],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["srifle_mas_hk417",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["srifle_mas_sr25",nil,10000],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["R3F_Minimi","Minimi",15000],
                        ["R3F_200Rnd_556x45_MINIMI","Minutions Minimi",0],
                        ["1Rnd_SmokeOrange_Grenade_shell",nil,0],
                        ["1Rnd_SmokeBlue_Grenade_shell",nil,0],
                        ["1Rnd_SmokePurple_Grenade_shell",nil,0],
                        ["1Rnd_SmokeYellow_Grenade_shell",nil,0],
                        ["1Rnd_SmokeRed_Grenade_shell",nil,0],
                        ["arifle_MX_GL_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["arifle_MXC_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["R3F_Famas_F1_HG",nil,1000],
                        ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["arifle_mas_g3",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["R3F_HK417L",nil,1000],
                        ["R3F_20Rnd_762x51_HK417",nil,0],
                        ["arifle_mas_m4_m203c",nil,1000],
                        ["30Rnd_mas_556x45_Stanag",nil,0],
                        ["arifle_MXM_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["R3F_Famas_G2_HG",nil,1000],
                        ["R3F_30Rnd_556x45_FAMAS",nil,0],
                        ["srifle_GM6_F",nil,1000],
                        ["5Rnd_127x108_Mag",nil,0],
                        ["arifle_MXM_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["R3F_Famas_G2_HG",nil,1000],
                        ["R3F_30Rnd_556x45_FAMAS",nil,0],
                        ["srifle_GM6_F",nil,1000],
                        ["5Rnd_127x108_Mag",nil,0],
                        ["R3F_M107",nil,25000],
                        ["R3F_10Rnd_127x99_M107",nil,0],
                        ["R3F_PGM_Hecate_II_POLY",nil,25000],
                        ["R3F_7Rnd_127x99_PGM",nil,0]

                              ]
                        ];
                  };
                  case (__GETC__(life_coplevel) == 8):
                  {
                        ["Armurerie Colonel",
                              [
                                    ["optic_mas_Holosight_blk","Viseur Holographique",0],
                              ["optic_mas_Arco_blk","Viseur Arco noir",0],
                              ["optic_MRCO","Viseur Mrco",0],
                              ["optic_SOS","Viseur Sos",0],
                              ["optic_Hamr","Viseur Rco",0],
                              ["optic_LRPS","Viseur Lrps",0],
                              ["optic_DMS","Viseur Dms",0],
                              ["optic_Aco","Viseur Aco",0],
                              ["optic_mas_zeiss_eo",nil,1000],  
                        ["R3F_EOTECH",nil,0],
                        ["R3F_AIMPOINT",nil,0],
                        ["R3F_J4",nil,0],
                        ["optic_mas_acog_eo",nil,0],
                        ["optic_mas_DMS",nil,1000],
                        ["R3F_J8_MILDOT",nil,0],
                        ["R3F_J10_MILDOT",nil,0],
                        ["R3F_OB50",nil,0],
                        ["optic_mas_zeiss_eo",nil,0],
                        ["R3F_ZEISS",nil,0],
                        ["acc_flashlight",nil,0],
                        ["acc_pointer_IR",nil,0],
                        ["R3F_LAMPE_SURB",nil,0],
                        ["R3F_PIRAT",nil,0],

                        ["arifle_mas_mp5","Mp5 A5",0],
                        ["30Rnd_mas_9x21_Stanag",nil,0],
                        ["SMG_02_F","Sting 9mm",0],
                        ["30Rnd_9x21_Mag",nil,0],
                              ["arifle_mas_m1014",nil,0],
                              ["7Rnd_mas_12Gauge_Slug",nil,0],
                              ["R3F_Famas_surb",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["srifle_mas_m24",nil,0],
                              ["5Rnd_mas_762x51_Stanag",nil,0],
                              ["arifle_mas_l119",nil,0],
                              ["30Rnd_mas_556x45_Stanag",nil,0],
                              ["arifle_MX_F",nil,0],
                              ["30Rnd_65x39_caseless_mag",nil,0],
                              ["R3F_Famas_surb_HG",nil,0],
                              ["R3F_Famas_G2",nil,0],
                              ["R3F_30Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M_HG",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["LMG_mas_Mk200_F",nil,0],
                              ["200Rnd_mas_556x45_T_Stanag",nil,0],
                              ["R3F_FRF2",nil,0],
                              ["R3F_10Rnd_762x51_FRF2",nil,0],
                        ["R3F_Famas_F1",nil,1500],
                        ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["arifle_MX_SW_F",nil,1500],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["srifle_mas_hk417",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["srifle_mas_sr25",nil,10000],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["R3F_Minimi","Minimi",15000],
                        ["R3F_200Rnd_556x45_MINIMI","Minutions Minimi",0],
                        ["1Rnd_SmokeOrange_Grenade_shell",nil,0],
                        ["1Rnd_SmokeBlue_Grenade_shell",nil,0],
                        ["1Rnd_SmokePurple_Grenade_shell",nil,0],
                        ["1Rnd_SmokeYellow_Grenade_shell",nil,0],
                        ["1Rnd_SmokeRed_Grenade_shell",nil,0],
                        ["arifle_MX_GL_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["arifle_MXC_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["R3F_Famas_F1_HG",nil,1000],
                        ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["arifle_mas_g3",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["R3F_HK417L",nil,1000],
                        ["R3F_20Rnd_762x51_HK417",nil,0],
                        ["arifle_mas_m4_m203c",nil,1000],
                        ["30Rnd_mas_556x45_Stanag",nil,0],
                        ["arifle_MXM_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["R3F_Famas_G2_HG",nil,1000],
                        ["R3F_30Rnd_556x45_FAMAS",nil,0],
                        ["srifle_GM6_F",nil,1000],
                        ["5Rnd_127x108_Mag",nil,0],
                        ["arifle_MXM_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["R3F_Famas_G2_HG",nil,1000],
                        ["R3F_30Rnd_556x45_FAMAS",nil,0],
                        ["srifle_GM6_F",nil,1000],
                        ["5Rnd_127x108_Mag",nil,0],
                        ["R3F_M107",nil,25000],
                        ["R3F_10Rnd_127x99_M107",nil,0],
                        ["R3F_PGM_Hecate_II_POLY",nil,25000],
                        ["R3F_7Rnd_127x99_PGM",nil,0],
                        ["srifle_mas_m107",nil,10000],
                        ["5Rnd_mas_127x99_Stanag",nil,0]

                              ]
                        ];
                  };
                  case (__GETC__(life_coplevel) == 9):
                  {
                        ["Armurerie Général",
                              [
                                    ["optic_mas_Holosight_blk","Viseur Holographique",0],
                              ["optic_mas_Arco_blk","Viseur Arco noir",0],
                              ["optic_MRCO","Viseur Mrco",0],
                              ["optic_SOS","Viseur Sos",0],
                              ["optic_Hamr","Viseur Rco",0],
                              ["optic_LRPS","Viseur Lrps",0],
                              ["optic_DMS","Viseur Dms",0],
                              ["optic_Aco","Viseur Aco",0],
                              ["optic_mas_zeiss_eo",nil,1000],  
                        ["R3F_EOTECH",nil,0],
                        ["R3F_AIMPOINT",nil,0],
                        ["R3F_J4",nil,0],
                        ["optic_mas_acog_eo",nil,0],
                        ["optic_mas_DMS",nil,1000],
                        ["R3F_J8_MILDOT",nil,0],
                        ["R3F_J10_MILDOT",nil,0],
                        ["R3F_OB50",nil,0],
                        ["optic_mas_zeiss_eo",nil,0],
                        ["acc_flashlight",nil,0],
                        ["acc_pointer_IR",nil,0],
                        ["R3F_LAMPE_SURB",nil,0],
                        ["R3F_PIRAT",nil,0], 
                              ["arifle_mas_mp5","Mp5 A5",0],
                        ["30Rnd_mas_9x21_Stanag",nil,0],
                        ["SMG_02_F","Sting 9mm",0],
                        ["30Rnd_9x21_Mag",nil,0],
                              ["arifle_mas_m1014",nil,0],
                              ["7Rnd_mas_12Gauge_Slug",nil,0],
                              ["R3F_Famas_surb",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["srifle_mas_m24",nil,0],
                              ["5Rnd_mas_762x51_Stanag",nil,0],
                              ["arifle_mas_l119",nil,0],
                              ["30Rnd_mas_556x45_Stanag",nil,0],
                              ["arifle_MX_F",nil,0],
                              ["30Rnd_65x39_caseless_mag",nil,0],
                              ["R3F_Famas_surb_HG",nil,0],
                              ["R3F_Famas_G2",nil,0],
                              ["R3F_30Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M_HG",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["LMG_mas_Mk200_F",nil,0],
                              ["200Rnd_mas_556x45_T_Stanag",nil,0],
                              ["R3F_FRF2",nil,0],
                              ["R3F_10Rnd_762x51_FRF2",nil,0],
                        ["R3F_Famas_F1",nil,1500],
                        ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["arifle_MX_SW_F",nil,1500],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["srifle_mas_hk417",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["srifle_mas_sr25",nil,10000],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["R3F_Minimi","Minimi",15000],
                        ["R3F_200Rnd_556x45_MINIMI","Minutions Minimi",0],
                        ["1Rnd_SmokeOrange_Grenade_shell",nil,0],
                        ["1Rnd_SmokeBlue_Grenade_shell",nil,0],
                        ["1Rnd_SmokePurple_Grenade_shell",nil,0],
                        ["1Rnd_SmokeYellow_Grenade_shell",nil,0],
                        ["1Rnd_SmokeRed_Grenade_shell",nil,0],
                        ["arifle_MX_GL_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["arifle_MXC_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["R3F_Famas_F1_HG",nil,1000],
                        ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["arifle_mas_g3",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["R3F_HK417L",nil,1000],
                        ["R3F_20Rnd_762x51_HK417",nil,0],
                        ["arifle_mas_m4_m203c",nil,1000],
                        ["30Rnd_mas_556x45_Stanag",nil,0],
                        ["arifle_MXM_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["R3F_Famas_G2_HG",nil,1000],
                        ["R3F_30Rnd_556x45_FAMAS",nil,0],
                        ["srifle_GM6_F",nil,1000],
                        ["5Rnd_127x108_Mag",nil,0],
                        ["arifle_MXM_F",nil,1000],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["R3F_Famas_G2_HG",nil,1000],
                        ["R3F_30Rnd_556x45_FAMAS",nil,0],
                        ["srifle_GM6_F",nil,1000],
                        ["5Rnd_127x108_Mag",nil,0],
                        ["R3F_M107",nil,25000],
                        ["R3F_10Rnd_127x99_M107",nil,0],
                        ["R3F_PGM_Hecate_II_POLY",nil,25000],
                        ["R3F_7Rnd_127x99_PGM",nil,0],
                        ["srifle_mas_m107",nil,10000],
                        ["5Rnd_mas_127x99_Stanag",nil,0]
                              ]
                        ];
                  };
            };
      };


  case "med_basic":
  {
    switch (true) do 
    {
      case (playerSide != independent): {"Vous n'êtes pas Médecin"};
      default {
        ["Equipements Médecin",
          [
            ["civ_tenue_Samu",nil,0],
            ["ItemGPS",nil,100],
            ["ItemRadio","Téléphone",100],
            ["Binocular",nil,150],
            ["ToolKit",nil,250],
            ["FirstAidKit",nil,150],
            ["Medikit",nil,500],
            ["NVGoggles_INDEP",nil,1200],
            ["B_FieldPack_ocamo",nil,3000]
          ]
        ];
      };
    };
  };
  
  case "rebel":
  {
    switch(true) do
    {
      case (playerSide != civilian): {"Vous n'êtes pas civil !"};
      case (!license_civ_rebel): {"Vous n'avez pas l'entrainement rebelle"};
      default
      {
        ["Mohammed's Jihadi Shop",
          [
            ["ItemGPS",nil,250],
            ["ItemCompass",nil,50],
            ["ItemRadio","Téléphone",250],
            ["NVGoggles",nil,850],
            ["ItemMap",nil,15],
            ["SmokeShell","Fumigène Blanche",200],
            ["SmokeShellRed","Fumigène Rouge",270],
            ["SmokeShellGreen","Fumigène Verte",270],
            ["SmokeShellPurple","Fumigène Violet",270],
            ["SmokeShellBlue","Fumigène Bleu",270],
            ["SmokeShellOrange","Fumigène Orange",270],
            ["optic_MRCO","Viseur Mrco",1350],
            ["optic_SOS","Viseur Sos",2350],
            ["optic_Hamr","Viseur Rco",1250],
            ["optic_LRPS","Viseur Lrps",3500],
            ["optic_DMS","Viseur Dms",1050],
            ["optic_Aco","Viseur Aco",250],

            ["optic_mas_acog",nil,1750],
            ["optic_mas_aim",nil,1350],
            ["optic_Arco",nil,1850],
            ["optic_Holosight",nil,850],
            ["optic_mas_pso",nil,2450],
            ["optic_mas_pso_nv",nil,8600],

            ["srifle_DMR_01_F",nil,115000],
            ["10Rnd_762x51_Mag",nil,850],
            ["srifle_mas_svd",nil,115000],
            ["10Rnd_mas_762x54_mag",nil,1250],
            ["arifle_mas_m70",nil,65000],
            ["30Rnd_mas_762x39_mag",nil,850],
            ["srifle_mas_m91",nil,115000],
            ["10Rnd_mas_762x54_mag",nil,1250],
            ["arifle_mas_ak_74m",nil,35000],
            ["30Rnd_mas_545x39_mag",nil,850],
            ["arifle_mas_ak_74m_sf",nil,55000],
            ["30Rnd_mas_545x39_mag",nil,850],
            ["arifle_mas_akm",nil,65000],
            ["30Rnd_mas_762x39_mag",nil,1400],
            ["arifle_Katiba_F",nil,40000],
            ["30Rnd_65x39_caseless_green",nil,1050],
            ["LMG_mas_M249a_F",nil,85000],
            ["200Rnd_mas_556x45_T_Stanag",nil,1450],
            ["arifle_mas_aks74",nil,30000],
            ["30Rnd_mas_545x39_mag",nil,850],
            ["arifle_mas_aks74u",nil,27500],
            ["30Rnd_mas_545x39_mag",nil,850],
            ["arifle_mas_bizon",nil,35000],
            ["64Rnd_mas_9x18_mag",nil,1050],
            ["srifle_EBR_F",nil,135000],
            ["20Rnd_762x51_Mag",nil,1350],
            ["arifle_SDAR_F",nil,22050],
            ["20Rnd_556x45_UW_mag",nil,550],
            ["arifle_Mk20_plain_F",nil,850],
            ["30Rnd_556x45_Stanag",nil,850],
            ["arifle_Mk20_GL_F",nil,850],
            ["30Rnd_556x45_Stanag",nil,850],
            ["arifle_mas_saiga",nil,35000],
            ["10Rnd_mas_12Gauge_Slug",nil,1250]

          ]
        ];
      };
    };
  };
  
  case "gun":
  {
    switch(true) do
    {
      case (playerSide != civilian): {"Vous n'êtes pas civil !"};
      case (!license_civ_gun): {"Vous n'avez pas le permis port d'armes"};
      default
      {
        ["Armurerie",
          [
            ["hgun_Rook40_F",nil,6500],
            ["hgun_Pistol_heavy_02_F",nil,9850],
            ["hgun_ACPC2_F",nil,11500],
            ["optic_ACO_grn_smg",nil,2500],
            ["V_Rangemaster_belt",nil,4900],
            ["16Rnd_9x21_Mag",nil,25],
            ["9Rnd_45ACP_Mag",nil,45],
            ["6Rnd_45ACP_Cylinder",nil,50],
            ["NVGoggles",nil,1200]
          ]
        ];
      };
    };
  };
   case "donateurarmes":
  {
    switch(true) do
    {
      case (playerSide != civilian): {"Vous n'êtes pas civil !"};
      case (!license_civ_donateurarmes): {"Vous n'avez pas le permis Donateur"};
      default
      {
        ["Armurerie Donateur Civile",
          [
            ["hgun_PDW2000_F",nil,25000],
            ["30Rnd_9x21_Mag",nil,75],
            ["hgun_mas_uzi_F",nil,25000],
            ["optic_Yorris",nil,45]
          ]
        ];
      };
    };
  };
   case "rebeldonateurarmes":
  {
    switch(true) do
    {
      case (playerSide != civilian): {"Vous n'êtes pas civil !"};
      case (!license_civ_donateurarmes): {"Vous n'avez pas le permis Donateur"};
      default
      {
        ["Armurerie Donateur Rebelle",
          [

            ["optic_mas_Hamr_camo",nil,1250],
            ["optic_mas_pso_nv_eo_c",nil,12500],
            ["optic_mas_pso_eo_c",nil,2250],
            ["optic_mas_MRCO_camo",nil,1550],
            ["optic_mas_Holosight_camo",nil,1250],
            ["optic_mas_Arco_camo",nil,1750],
            ["optic_mas_acog_rd_c",nil,1850],
            ["7Rnd_408_Mag",nil,1250],


            ["LMG_mas_pkm_F",nil,260000],
            ["100Rnd_mas_762x54_T_mag",nil,2500],
            ["LMG_mas_m72_F",nil,165000],
            ["100Rnd_mas_762x39_T_mag",nil,1850],
            ["arifle_mas_ak_74m_c",nil,35000],
            ["30Rnd_mas_545x39_mag",nil,850],
            ["arifle_mas_ak_74m_sf_c",nil,35000],
            ["30Rnd_mas_545x39_mag",nil,850],
            ["arifle_mas_akms_c",nil,0],
            ["30Rnd_mas_762x39_mag",nil,0],
            ["arifle_mas_aks74u_c",nil,0],
            ["30Rnd_mas_545x39_mag",nil,0],

            ["LMG_mas_m240_F",nil,245000],
            ["100Rnd_mas_762x51_T_Stanag",nil,2500],
            ["LMG_mas_M249_F_d",nil,145000],
            ["200Rnd_mas_556x45_T_Stanag",nil,2000],
            ["srifle_LRR_F",nil,140000],
            ["7Rnd_408_Mag",nil,1250],
            
            ["srifle_LRR_camo_F",nil,155000],
            ["7Rnd_408_Mag",nil,1250],
            ["LMG_mas_mg3_F",nil,245000],
            ["100Rnd_mas_762x51_T_Stanag",nil,2050],
            ["LMG_mas_mk48_F_d",nil,230000],
            ["100Rnd_mas_762x51_T_Stanag",nil,1250],

            
            ["R3F_PAMAS",nil,10000],
            ["R3F_15Rnd_9x19_PAMAS",nil,1250]
          ]
        ];
      };
    };
  };
     case "donateurcoparmes":
  {
    switch(true) do
    {
      case (playerSide != west): {"Vous n'êtes pas Gendarme !"};
      case (!license_cop_donateurcoparmes): {"Vous n'avez pas le permis Donateur de la Gendarmerie"};
      case (__GETC__(life_coplevel) == 1):
        {
            ["Armurerie Donateur Adjoint",
            [
            
            ["optic_mas_Aco_camo","ACO Rouge CAMO",0],
            ["optic_mas_ACO_grn_camo","ACO Vert CAMO",0],

            ["arifle_mas_mp5_d","Mp5",0],
            ["arifle_mas_mp5sd","Mp5 SD",0],
            ["30Rnd_mas_9x21_Stanag",nil,0]
            ]
            ];
      };
      case (__GETC__(life_coplevel) == 2):
        {
            ["Armurerie Donateur Brigadier",
            [
            ["optic_mas_Aco_camo","ACO Rouge CAMO",0],
            ["optic_mas_ACO_grn_camo","ACO Vert CAMO",0],
            ["R3F_EOTECH_DES",nil,350],
            ["R3F_J4_DES",nil,750],
            ["R3F_J4_DES",nil,750],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_Arco_blk",nil,850],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_acog_eo",nil,850],

            ["arifle_mas_mp5_d","Mp5",0],
            ["arifle_mas_mp5sd","Mp5 SD",0],
            ["30Rnd_mas_9x21_Stanag",nil,0],
            ["R3F_Famas_surb_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK416M_DES",nil,0],
            ["R3F_30Rnd_556x45_HK416",nil,0],
            ["arifle_mas_hk416","Hk416 Modif.",2500],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["R3F_M4S90",nil,0],
            ["R3F_7Rnd_M4S90",nil,0]
            ]
            ];
      };
      case (__GETC__(life_coplevel) == 3):
        {
            ["Armurerie Doonateur Adjudant",
            [
            ["optic_mas_Aco_camo","ACO Rouge CAMO",0],
            ["optic_mas_ACO_grn_camo","ACO Vert CAMO",0],
            ["R3F_EOTECH_DES",nil,350],
            ["R3F_J4_DES",nil,750],
            ["R3F_J4_DES",nil,750],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_Arco_blk",nil,850],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_DMS_c",nil,950],
            ["optic_NVS",nil,2500],
            ["optic_mas_zeiss_eo_c",nil,950],

            ["arifle_mas_mp5_d","Mp5",0],
            ["arifle_mas_mp5sd","Mp5 SD",0],
            ["30Rnd_mas_9x21_Stanag",nil,0],
            ["R3F_Famas_surb_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK416M_DES",nil,0],
            ["R3F_30Rnd_556x45_HK416",nil,0],
            ["R3F_M4S90",nil,0],
            ["R3F_7Rnd_M4S90",nil,0],
            ["arifle_MX_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_surb_HG_DES",nil,0],
            ["R3F_Famas_G2_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK416M_HG_DES",nil,0],
            ["R3F_30Rnd_556x45_HK416",nil,0],
            ["arifle_mas_l119_d",nil,0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["srifle_mas_m24_d",nil,0],
            ["5Rnd_mas_762x51_Stanag",nil,0],
            ["srifle_mas_hk417","Hk417 Modif.",0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["arifle_mas_hk416","Hk416 Modif.",0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["muzzle_mas_snds_M",nil,1500],
            ["muzzle_mas_snds_SM",nil,1500],
            ["R3F_FRF2_DES",nil,0],
            ["R3F_10Rnd_762x51_FRF2",nil,0]
            ]
            ];
      };
      case (__GETC__(life_coplevel) == 4):
        {
            ["Armurerie Donateur Major",
            [
            ["optic_mas_Aco_camo","ACO Rouge CAMO",0],
            ["optic_mas_ACO_grn_camo","ACO Vert CAMO",0],
            ["R3F_EOTECH_DES",nil,350],
            ["R3F_J4_DES",nil,750],
            ["R3F_J4_DES",nil,750],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_Arco_blk",nil,850],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_DMS_c",nil,950],
            ["optic_NVS",nil,2500],
            ["optic_mas_zeiss_eo_c",nil,950],
            ["R3F_ZEISS_DES",nil,1500],

            ["arifle_mas_mp5_d","Mp5",0],
            ["arifle_mas_mp5sd","Mp5 SD",0],
            ["30Rnd_mas_9x21_Stanag",nil,0],
            ["R3F_Famas_surb_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK416M_DES",nil,0],
            ["R3F_30Rnd_556x45_HK416",nil,0],
            ["srifle_mas_hk417","Hk417 Modif.",0],
            ["srifle_mas_hk417_v","Hk417 Modif. Camo forest",0],
            ["srifle_mas_hk417_d","Hk417 Modif. Camo desert",0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["arifle_mas_hk416","Hk416 Modif.",0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["muzzle_mas_snds_M",nil,1500],
            ["muzzle_mas_snds_SM",nil,1500],
            ["muzzle_mas_snds_SMc",nil,1500],
            ["R3F_M4S90",nil,0],
            ["R3F_7Rnd_M4S90",nil,0],
            ["arifle_MX_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_surb_HG_DES",nil,0],
            ["R3F_Famas_G2_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK416M_HG_DES",nil,0],
            ["R3F_30Rnd_556x45_HK416",nil,0],
            ["arifle_mas_l119_d",nil,0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["srifle_mas_m24_d",nil,0],
            ["5Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_FRF2_DES",nil,0],
            ["R3F_10Rnd_762x51_FRF2",nil,0],
            ["arifle_MX_SW_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["srifle_mas_sr25_d",nil,0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0]
            ]
            ];
      };
      case (__GETC__(life_coplevel) == 5):
        {
            ["Armurerie Donateur Lieutenant",
            [
            ["optic_mas_Aco_camo","ACO Rouge CAMO",0],
            ["optic_mas_ACO_grn_camo","ACO Vert CAMO",0],
            ["R3F_EOTECH_DES",nil,350],
            ["R3F_J4_DES",nil,750],
            ["R3F_J4_DES",nil,750],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_Arco_blk",nil,850],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_DMS_c",nil,950],
            ["optic_NVS",nil,2500],
            ["optic_mas_zeiss_eo_c",nil,950],
            ["R3F_ZEISS_DES",nil,1500],

            ["arifle_mas_mp5_d","Mp5",0],
            ["arifle_mas_mp5sd","Mp5 SD",0],
            ["30Rnd_mas_9x21_Stanag",nil,0],
            ["R3F_Famas_surb_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK416M_DES",nil,0],
            ["R3F_30Rnd_556x45_HK416",nil,0],
            ["srifle_mas_hk417","Hk417 Modif.",0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["arifle_mas_hk416","Hk416 Modif.",0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["muzzle_mas_snds_M",nil,1500],
            ["muzzle_mas_snds_SM",nil,1500],
            ["R3F_M4S90",nil,0],
            ["R3F_7Rnd_M4S90",nil,0],
            ["arifle_MX_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_surb_HG_DES",nil,0],
            ["R3F_Famas_G2_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK416M_HG_DES",nil,0],
            ["R3F_30Rnd_556x45_HK416",nil,0],
            ["arifle_mas_l119_d",nil,0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["srifle_mas_m24_d",nil,0],
            ["5Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_FRF2_DES",nil,0],
            ["R3F_10Rnd_762x51_FRF2",nil,0],
            ["arifle_MX_SW_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["srifle_mas_sr25_d",nil,0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK417S_HG",nil,0],
            ["R3F_20Rnd_762x51_HK417",nil,0],
            ["arifle_MX_GL_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["arifle_MXC_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_F1_HG_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["arifle_mas_fal_m203",nil,0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_HK417L_DES",nil,0],
            ["R3F_20Rnd_762x51_HK417",nil,0],
            ["arifle_mas_m4_m203c_d",nil,0],
            ["30Rnd_mas_556x45_Stanag",nil,0]
            ]
            ];
      };
      case (__GETC__(life_coplevel) == 6):
        {
            ["Armurerie Donateur Capitaine",
            [
            ["optic_mas_Aco_camo","ACO Rouge CAMO",0],
            ["optic_mas_ACO_grn_camo","ACO Vert CAMO",0],
            ["R3F_EOTECH_DES",nil,350],
            ["R3F_J4_DES",nil,750],
            ["R3F_J4_DES",nil,750],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_Arco_blk",nil,850],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_DMS_c",nil,950],
            ["optic_NVS",nil,2500],
            ["optic_mas_zeiss_eo_c",nil,950],
            ["R3F_ZEISS_DES",nil,1500],

            ["arifle_mas_mp5_d","Mp5",0],
            ["arifle_mas_mp5sd","Mp5 SD",0],
            ["30Rnd_mas_9x21_Stanag",nil,0],
            ["R3F_Famas_surb_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK416M_DES",nil,0],
            ["R3F_30Rnd_556x45_HK416",nil,0],
            ["srifle_mas_hk417","Hk417 Modif.",0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["arifle_mas_hk416","Hk416 Modif.",0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["muzzle_mas_snds_M",nil,1500],
            ["muzzle_mas_snds_SM",nil,1500],
            ["R3F_M4S90",nil,0],
            ["R3F_7Rnd_M4S90",nil,0],
            ["arifle_MX_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_surb_HG_DES",nil,0],
            ["R3F_Famas_G2_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK416M_HG_DES",nil,0],
            ["R3F_30Rnd_556x45_HK416",nil,0],
            ["arifle_mas_l119_d",nil,0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["srifle_mas_m24_d",nil,0],
            ["5Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_FRF2_DES",nil,0],
            ["R3F_10Rnd_762x51_FRF2",nil,0],
            ["arifle_MX_SW_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["srifle_mas_sr25_d",nil,0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK417S_HG",nil,0],
            ["R3F_20Rnd_762x51_HK417",nil,0],
            ["arifle_MX_GL_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["arifle_MXC_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_F1_HG_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["arifle_mas_fal_m203",nil,0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_HK417L_DES",nil,0],
            ["R3F_20Rnd_762x51_HK417",nil,0],
            ["arifle_mas_m4_m203c_d",nil,0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["arifle_MXM_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_G2_HG_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["srifle_GM6_camo_F",nil,0],
            ["5Rnd_127x108_Mag",nil,0]
            ]
            ];
      };
      case (__GETC__(life_coplevel) == 7):
        {
            ["Armurerie Donateur Commandant",
            [
            ["optic_mas_Aco_camo","ACO Rouge CAMO",0],
            ["optic_mas_ACO_grn_camo","ACO Vert CAMO",0],
            ["R3F_EOTECH_DES",nil,350],
            ["R3F_J4_DES",nil,750],
            ["R3F_J4_DES",nil,750],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_Arco_blk",nil,850],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_DMS_c",nil,950],
            ["optic_NVS",nil,2500],
            ["optic_mas_zeiss_eo_c",nil,950],
            ["R3F_ZEISS_DES",nil,1500],

            ["arifle_mas_mp5_d","Mp5",0],
            ["arifle_mas_mp5sd","Mp5 SD",0],
            ["30Rnd_mas_9x21_Stanag",nil,0],
            ["R3F_Famas_surb_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK416M_DES",nil,0],
            ["R3F_30Rnd_556x45_HK416",nil,0],
            ["srifle_mas_hk417","Hk417 Modif.",0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["arifle_mas_hk416","Hk416 Modif.",0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["muzzle_mas_snds_M",nil,1500],
            ["muzzle_mas_snds_SM",nil,1500],
            ["R3F_M4S90",nil,0],
            ["R3F_7Rnd_M4S90",nil,0],
            ["arifle_MX_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_surb_HG_DES",nil,0],
            ["R3F_Famas_G2_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK416M_HG_DES",nil,0],
            ["R3F_30Rnd_556x45_HK416",nil,0],
            ["arifle_mas_l119_d",nil,0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["srifle_mas_m24_d",nil,0],
            ["5Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_FRF2_DES",nil,0],
            ["R3F_10Rnd_762x51_FRF2",nil,0],
            ["arifle_MX_SW_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["srifle_mas_sr25_d",nil,0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK417S_HG",nil,0],
            ["R3F_20Rnd_762x51_HK417",nil,0],
            ["arifle_MX_GL_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["arifle_MXC_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_F1_HG_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["arifle_mas_fal_m203",nil,0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_HK417L_DES",nil,0],
            ["R3F_20Rnd_762x51_HK417",nil,0],
            ["arifle_mas_m4_m203c_d",nil,0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["arifle_MXM_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_G2_HG_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["srifle_GM6_camo_F",nil,0],
            ["5Rnd_127x108_Mag",nil,0],
            ["R3F_PGM_Hecate_II_DES",nil,0],
            ["R3F_7Rnd_127x99_PGM",nil,0],
            ["R3F_M107_DES",nil,0],
            ["R3F_10Rnd_127x99_M107",nil,0]

            ]
            ];
      };
      case (__GETC__(life_coplevel) == 8):
        {
            ["Armurerie Donateur Colonel",
            [
            ["optic_mas_Aco_camo","ACO Rouge CAMO",0],
            ["optic_mas_ACO_grn_camo","ACO Vert CAMO",0],
            ["R3F_EOTECH_DES",nil,350],
            ["R3F_J4_DES",nil,750],
            ["R3F_J4_DES",nil,750],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_Arco_blk",nil,850],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_DMS_c",nil,950],
            ["optic_NVS",nil,2500],
            ["optic_mas_zeiss_eo_c",nil,950],
            ["R3F_ZEISS_DES",nil,1500],

            ["arifle_mas_mp5_d","Mp5",0],
            ["arifle_mas_mp5sd","Mp5 SD",0],
            ["30Rnd_mas_9x21_Stanag",nil,0],
            ["R3F_Famas_surb_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK416M_DES",nil,0],
            ["R3F_30Rnd_556x45_HK416",nil,0],
            ["srifle_mas_hk417","Hk417 Modif.",0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["arifle_mas_hk416","Hk416 Modif.",0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["muzzle_mas_snds_M",nil,1500],
            ["muzzle_mas_snds_SM",nil,1500],
            ["R3F_M4S90",nil,0],
            ["R3F_7Rnd_M4S90",nil,0],
            ["arifle_MX_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_surb_HG_DES",nil,0],
            ["R3F_Famas_G2_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK416M_HG_DES",nil,0],
            ["R3F_30Rnd_556x45_HK416",nil,0],
            ["arifle_mas_l119_d",nil,0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["srifle_mas_m24_d",nil,0],
            ["5Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_FRF2_DES",nil,0],
            ["R3F_10Rnd_762x51_FRF2",nil,0],
            ["arifle_MX_SW_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["srifle_mas_sr25_d",nil,0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK417S_HG",nil,0],
            ["R3F_20Rnd_762x51_HK417",nil,0],
            ["arifle_MX_GL_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["arifle_MXC_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_F1_HG_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["arifle_mas_fal_m203",nil,0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_HK417L_DES",nil,0],
            ["R3F_20Rnd_762x51_HK417",nil,0],
            ["arifle_mas_m4_m203c_d",nil,0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["arifle_MXM_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_G2_HG_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["srifle_GM6_camo_F",nil,0],
            ["5Rnd_127x108_Mag",nil,0],
            ["R3F_PGM_Hecate_II_DES",nil,0],
            ["R3F_7Rnd_127x99_PGM",nil,0],
            ["R3F_M107_DES",nil,0],
            ["R3F_10Rnd_127x99_M107",nil,0],
            ["srifle_mas_m107_d",nil,0],
            ["5Rnd_mas_127x99_Stanag",nil,0],
            ["srifle_mas_m107_v",nil,0],
            ["5Rnd_mas_127x99_Stanag",nil,0]
            ]
            ];
      };
      case (__GETC__(life_coplevel) == 9):
        {
            ["Armurerie Donateur Général",
            [
            ["optic_mas_Aco_camo","ACO Rouge CAMO",0],
            ["optic_mas_ACO_grn_camo","ACO Vert CAMO",0],
            ["R3F_EOTECH_DES",nil,350],
            ["R3F_J4_DES",nil,750],
            ["R3F_J4_DES",nil,750],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_Arco_blk",nil,850],
            ["optic_mas_acog_eo",nil,850],
            ["optic_mas_DMS_c",nil,950],
            ["optic_NVS",nil,2500],
            ["optic_mas_zeiss_eo_c",nil,950],
            ["R3F_ZEISS_DES",nil,1500],
            ["muzzle_mas_snds_M",nil,1500],
            ["muzzle_mas_snds_SM",nil,1500],

            ["arifle_mas_mp5_d","Mp5",0],
            ["arifle_mas_mp5sd","Mp5 SD",0],
            ["30Rnd_mas_9x21_Stanag",nil,0],
            ["R3F_Famas_surb_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK416M_DES",nil,0],
            ["R3F_30Rnd_556x45_HK416",nil,0],
            ["srifle_mas_hk417","Hk417 Modif.",0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["arifle_mas_hk416","Hk416 Modif.",0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["R3F_M4S90",nil,0],
            ["R3F_7Rnd_M4S90",nil,0],
            ["arifle_MX_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_surb_HG_DES",nil,0],
            ["R3F_Famas_G2_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK416M_HG_DES",nil,0],
            ["R3F_30Rnd_556x45_HK416",nil,0],
            ["arifle_mas_l119_d",nil,0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["srifle_mas_m24_d",nil,0],
            ["5Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_FRF2_DES",nil,0],
            ["R3F_10Rnd_762x51_FRF2",nil,0],
            ["arifle_MX_SW_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["srifle_mas_sr25_d",nil,0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_Famas_F1_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["R3F_HK417S_HG",nil,0],
            ["R3F_20Rnd_762x51_HK417",nil,0],
            ["arifle_MX_GL_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["arifle_MXC_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_F1_HG_DES",nil,0],
            ["R3F_25Rnd_556x45_FAMAS",nil,0],
            ["arifle_mas_fal_m203",nil,0],
            ["20Rnd_mas_762x51_Stanag",nil,0],
            ["R3F_HK417L_DES",nil,0],
            ["R3F_20Rnd_762x51_HK417",nil,0],
            ["arifle_mas_m4_m203c_d",nil,0],
            ["30Rnd_mas_556x45_Stanag",nil,0],
            ["arifle_MXM_Black_F",nil,0],
            ["30Rnd_65x39_caseless_mag",nil,0],
            ["R3F_Famas_G2_HG_DES",nil,0],
            ["R3F_30Rnd_556x45_FAMAS",nil,0],
            ["srifle_GM6_camo_F",nil,0],
            ["5Rnd_127x108_Mag",nil,0],
            ["R3F_PGM_Hecate_II_DES",nil,0],
            ["R3F_7Rnd_127x99_PGM",nil,0],
            ["R3F_M107_DES",nil,0],
            ["R3F_10Rnd_127x99_M107",nil,0],
            ["srifle_mas_m107_d",nil,0],
            ["5Rnd_mas_127x99_Stanag",nil,0],
            ["srifle_mas_m107_v",nil,0],
            ["5Rnd_mas_127x99_Stanag",nil,0]
            ]
            ];
      };
    };
  };
  case "gang":
  {
    switch(true) do
    {
      case (playerSide != civilian): {"Vous n'êtes pas civil !"};
      default
      {
        ["Cachette",
          [
            ["hgun_Rook40_F",nil,1500],
            ["hgun_Pistol_heavy_02_F",nil,2500],
            ["hgun_ACPC2_F",nil,4500],
            ["hgun_PDW2000_F",nil,9500],
            ["optic_ACO_grn_smg",nil,950],
            ["V_Rangemaster_belt",nil,1900],
            ["16Rnd_9x21_Mag",nil,25],
            ["9Rnd_45ACP_Mag",nil,45],
            ["6Rnd_45ACP_Cylinder",nil,50],
            ["30Rnd_9x21_Mag",nil,75],
            ["arifle_mas_saiga",nil,30000],
            ["10Rnd_mas_12Gauge_Slug",nil,450],
            ["SMG_01_F",nil,45000],
            ["30Rnd_45ACP_Mag_SMG_01",nil,750]
          ]
        ];
      };
    };
  };
  case "gangdonateur":
  {
    switch(true) do
    {
      case (playerSide != civilian): {"Vous n'êtes pas civil !"};
      case (!license_civ_donateurarmes): {"Vous n'avez pas le permis Donateur"};
      default
      {
        ["Cachette donateur",
          [
            ["arifle_mas_aks74",nil,55000],
            ["30Rnd_mas_545x39_mag",nil,950],
            ["arifle_mas_aks74u_c",nil,45000],
            ["30Rnd_mas_545x39_mag",nil,950],
            ["arifle_mas_bizon",nil,65000],
            ["64Rnd_mas_9x18_mag",nil,2500]
          ]
        ];
      };
    };
  };
  
  case "genstore":
  {
    ["Magasin Général",
      [
        ["Binocular",nil,150],
        ["ItemRadio","Téléphone",100],
        ["ItemGPS",nil,100],
        ["ToolKit",nil,250],
        ["FirstAidKit",nil,150],
        ["NVGoggles",nil,1000]
      ]
    ];
  };
};