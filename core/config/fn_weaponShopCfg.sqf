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
       
	   
	   
	   
        case "med_supplies":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Supplies Shop",
                                        [
											["FirstAidKit",nil,250],
											["Medikit",nil,500],
											["ToolKit",nil,500]
                                        ]
                                ];
                        };
                };
        };
		case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Basic Shop",
                                        [
											["A3L_Extinguisher",nil,350],
											["tf_anprc152",nil,100],
                                            ["tf_rt1523g",nil,300],
											["ItemGPS",nil,250],
											["Binocular",nil,1250],
											["ToolKit",nil,500],
										    ["Medikit",nil,500],
											["Chemlight_red",nil,200],
											["NVGoggles",nil,5000]
                                        ]
                                ];
                        };
                };
        };
		
         case "cop_cadet":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        default
                        {
                                ["Cadet Shop",
                                        [
                                             ["ItemMap",nil,5],
						                     ["ItemCompass",nil,5],
						                     ["Binocular",nil,150],
						                     ["Rangefinder",nil,7000],
						                     ["ItemGPS",nil,100],
						                     ["ToolKit",nil,50],
						                     ["FirstAidKit",nil,150],
											 ["NVGoggles_mas_h","Hidden NVG's",250],
											 ["NVGoggles_OPFOR",nil,500],
											 ["tf_anprc152",nil,100],
											 ["Taser_26",nil,200],
											 ["RADAR_GUN",nil,500],
											 ["26_cartridge",nil,100],
											 ["RH_g19t",nil,3000],
                                             ["RH_17Rnd_9x19_g17",nil,100]  									
                                        ]
                                ];
                        };
                };
        };
		
        case "cop_constable":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not a Officer!"};
                        default
                        {
                                ["Constable Shop",
                                        [                                     
											 ["Taser_26",nil,200],
											 ["RADAR_GUN",nil,500],
	                                         ["RH_g19t",nil,3000],
											 ["arifle_mas_mp5",nil,7500],
											 ["26_cartridge",nil,50],
                                             ["RH_17Rnd_9x19_g17",nil,100],		
											 ["30Rnd_mas_9x21_Stanag",nil,150] 	
                                        ]
                                ];
                        };
                };
        };
		
        case "cop_seniorconstable":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 3): {"You are not a Senior Officer!"};
                        default
                        {
                                ["Senior Constable Shop",
                                        [
                                             ["Taser_26",nil,200],
											 ["RADAR_GUN",nil,500],
	                                         ["RH_g19t",nil,3000],
											 ["arifle_mas_mp5",nil,7500],
											 ["RH_M16A3",nil,10000],
                                             ["26_cartridge",nil,50],	
											 ["RH_17Rnd_9x19_g17",nil,100],
                                             ["30Rnd_mas_9x21_Stanag",nil,150],
                                             ["RH_30Rnd_556x45_M855A1",nil,200],
											 ["RH_compM2",nil,500]
                                        ]
                                ];
                        };
                };
        };

        case "cop_sergeant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not a Sergeant!"};
                        default
                        {
                                ["Sergeant Shop",
                                        [
										     ["Taser_26",nil,200],
											 ["RADAR_GUN",nil,500],
	                                         ["RH_g19t",nil,3000],
											 ["arifle_mas_mp5",nil,7500],
											 ["RH_M16A3",nil,10000],
                                             ["RH_M4A6",nil,12500],	
											 ["26_cartridge",nil,50],
                                             ["RH_17Rnd_9x19_g17",nil,100],
                                             ["30Rnd_mas_9x21_Stanag",nil,150],
											 ["RH_30Rnd_556x45_M855A1",nil,200],
											 ["RH_30Rnd_68x43_FMJ",nil,250],
											 ["RH_compM2",nil,500],
											 ["RH_barska_rds",nil,600],
											 ["optic_mas_acog_eo",nil,700]
                                        ]
                                ];
                        };
                };
        };
		
        case "cop_seniorsergeant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 5): {"You are not a Captain!"};
                        default
                        {
                                ["Senior Sergeant Shop",
                                        [	
										     ["Taser_26",nil,200],
											 ["RADAR_GUN",nil,500],
	                                         ["RH_g19t",nil,3000],
											 ["arifle_mas_mp5",nil,7500],
											 ["RH_M16A3",nil,10000],
                                             ["RH_M4A6",nil,12500],	
											 ["srifle_mas_m24",nil,13000],	
											 ["26_cartridge",nil,50],
                                             ["RH_17Rnd_9x19_g17",nil,100],
                                             ["30Rnd_mas_9x21_Stanag",nil,150],
											 ["RH_30Rnd_556x45_M855A1",nil,200],
											 ["RH_30Rnd_68x43_FMJ",nil,250],
											 ["5Rnd_mas_762x51_Stanag",nil,300],
											 ["RH_compM2",nil,500],
											 ["RH_barska_rds",nil,600],
											 ["optic_mas_acog_eo",nil,700],
											 ["RH_accupoint",nil,1000]	
                                        ]
                                ];
                        };
                };
        };
		
	    case "cop_inspector":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 5): {"You are not a Captain!"};
                        default
                        {
                                ["Inspector Shop",
                                        [	
										     ["Taser_26",nil,200],
											 ["RADAR_GUN",nil,500],
	                                         ["RH_g19t",nil,3000],
											 ["RH_bullb",nil,5000],
											 ["arifle_mas_mp5",nil,7500],
											 ["RH_M16A3",nil,10000],
                                             ["RH_M4A6",nil,12500],	
											 ["srifle_mas_m24",nil,13000],	
											 ["RH_Mk12mod1",nil,15000],
											 ["26_cartridge",nil,50],
                                             ["RH_17Rnd_9x19_g17",nil,100],
											 ["RH_6Rnd_454_Mag",nil,125],
                                             ["30Rnd_mas_9x21_Stanag",nil,150],
											 ["RH_30Rnd_556x45_M855A1",nil,200],
											 ["RH_30Rnd_68x43_FMJ",nil,250],
											 ["5Rnd_mas_762x51_Stanag",nil,300],
											 ["RH_compM2",nil,500],
											 ["RH_barska_rds",nil,600],
											 ["optic_mas_acog_eo",nil,700],
											 ["RH_accupoint",nil,1000],
											 ["RH_m3lr",nil,1000]
											 
                                        ]
                                ];
                        };
                };
        };
        
       case "cop_superintendent":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 6): {"You are not a Cheif!"};
                        default
                        {
                                ["Superintendent Shop",
                                        [
										     ["Taser_26",nil,200],
											 ["RADAR_GUN",nil,500],
	                                         ["RH_g19t",nil,3000],
											 ["RH_bullb",nil,5000],
											 ["arifle_mas_mp5",nil,7500],
											 ["RH_M16A3",nil,10000],
                                             ["RH_M4A6",nil,12500],	
											 ["srifle_mas_m24",nil,13000],	
											 ["RH_Mk12mod1",nil,15000],
											 ["26_cartridge",nil,50],
                                             ["RH_17Rnd_9x19_g17",nil,100],
											 ["RH_6Rnd_454_Mag",nil,125],
                                             ["30Rnd_mas_9x21_Stanag",nil,150],
											 ["RH_30Rnd_556x45_M855A1",nil,200],
											 ["RH_30Rnd_68x43_FMJ",nil,250],
											 ["5Rnd_mas_762x51_Stanag",nil,300],
											 ["RH_compM2",nil,500],
											 ["RH_barska_rds",nil,600],
											 ["optic_mas_acog_eo",nil,700],
											 ["RH_accupoint",nil,1000],
											 ["RH_m3lr",nil,1000]	
                                        ]
                                ];
                        };
                };
		};
		
	    case "cop_swat":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (!license_cop_swat): {"You are not a member of the SWAT team!"};
                        default
                        {
                                ["SWAT Equipment",
                                        [
										     ["Taser_26",nil,200],
	                                         ["RH_g19t",nil,3000],
											 ["arifle_mas_mp5",nil,7500],
                                             ["RH_M4A6",nil,12500],	
											 ["hlc_rifle_awmagnum_BL",nil,20000],	
											 ["26_cartridge",nil,50],
                                             ["RH_17Rnd_9x19_g17",nil,100],
											 ["30Rnd_mas_9x21_Stanag",nil,150],
											 ["RH_30Rnd_68x43_FMJ",nil,250],
											 ["hlc_5rnd_300WM_FMJ_AWM",nil,300],
											 ["HandGrenade_Stone","Flashbang",1000],
											 ["RH_compM2",nil,500],
											 ["RH_barska_rds",nil,600],
											 ["optic_mas_acog_eo",nil,700],
											 ["RH_accupoint",nil,1000]
                                        ]
                                ];
                        };
                };
        };
		
        case "rebel":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You don't have a Rebel training license!"};
                        default
                        {
                                ["Mohammed's Jihadi Shop",
                                     [
										//Weapons
										["arifle_SDAR_F","Turtle ONLY Harpoon",30000],
										["RH_kimber_nw",nil,35000],
                                        ["hgun_ACPC2_F",nil,40000],
                                        ["RH_Deagles",nil,65000],										
										["RH_Deagleg",nil,75000],
                                        ["hgun_Pistol_heavy_01_F",nil,75500],
                                        ["RH_python",nil,78500],
                                        ["hgun_Pistol_heavy_02_F",nil,83500],
										["RH_tec9",nil,90000],
                                        ["RH_vp70",nil,118500],
										["AG_MP9_sidearm",nil,150000],
                                        ["RH_muzi",nil,195000],
                                        ["RH_tec9",nil,218000],
                                        ["RH_vz61",nil,218000],
                                        ["RH_g18",nil,225000],
										["arifle_mas_bizon",nil,255000],
                                        ["SMG_02_F",nil,345500],
										["arifle_mas_aks74u","AKS74U 5.45x39",350000],
										["arifle_mas_ak12_sf",nil,375000],
										["arifle_mas_ak74","AK74 5.45x39",395000],
										["A3L_AK47","AK47 5.45x39",450000],										
                                        ["chakFNP90_50rnd_skin1","FN P90",530000],
										["arifle_mas_akm","AKM 7.62x39",600000],
									    ["A3L_AK47sgold","AK47 5.45x39",600000],
										["RH_ar10",nil,600000],
										["arifle_mas_m4c_v","M4A1 CQB 5.56x45",700000],
										["arifle_mas_fal",nil,400000],
										["srifle_mas_m91",nil,800000],
										["srifle_mas_svd",nil,1000000],
										["arifle_mas_m14",nil,1000000],
										["srifle_mas_m24_v",nil,1500000],
										//Mags
										["RH_7Rnd_45cal_m1911","Kimber Clip",1250],
										["9Rnd_45ACP_Mag",nil,1250],
										["11Rnd_45ACP_Mag",nil,1250],
										["RH_6Rnd_357_Mag","Python Clip",1250],
										["6Rnd_45ACP_Cylinder","Zubr Clip",1250],
										["RH_18Rnd_9x19_VP",nil,1250],
										["RH_19Rnd_9x19_g18","Glock-18 Small Mag",1250],
										["RH_30Rnd_9x19_UZI",nil,2500],
										["RH_32Rnd_9x19_tec",nil,2600],
										["RH_20Rnd_32cal_vz61","Skorpion Mag",2800],
                                        ["RH_33Rnd_9x19_g18","Glock-18 Big Mag",2500],
										["30Rnd_9x21_Mag","Sting Mag",2550],
										["20Rnd_556x45_UW_mag","Underwater magazine",1200],  
										["chakFNP90_57x28_B_skin1","FN P90 Mag",3320],
										["RH_32Rnd_9x19_tec",nil,500],
										["RH_7Rnd_50_AE","DEAGLE Mag",250],
										["30Rnd_45ACP_Mag_SMG_01","MP9 Mag",300],
										["30Rnd_mas_545x39_mag","AK12 Mag",2000],
										["A3L_AK47Mag","AK47 5.45x39 Mag",2000],
										["30Rnd_mas_545x39_mag","AK74 5.45x39 Mag",2000],
										["30Rnd_mas_762x39_mag","AKM 7.62x39 Mag",3500],
										["30Rnd_mas_545x39_mag","AKS74U 5.45x39 Mag",2000],
										["RH_20Rnd_762x51_AR10","AR10 Mag",3500],
										["30Rnd_mas_556x45_Stanag","M4A1 CQB 5.56x45 Mag",5000],
										["64Rnd_mas_9x18_mag","Bizon Mag",2000],
										["20Rnd_mas_762x51_Stanag","FN FAL Mag",2000],
										["10Rnd_mas_762x54_mag","M91 Mag",7500],
										["10Rnd_mas_762x54_mag","SVD Mag",7500],
										["20Rnd_mas_762x51_Stanag","M14 Mag",7500],
										["5Rnd_mas_762x51_Stanag","M24 Mag",7500],
										//Optics
										["RH_barska_rds",nil,6000],
										["optic_ACO_grn",nil,2500],
										["optic_Arco","ARCO scope",20000],
										["optic_DMS","DMS Scope",30000],
										["optic_mas_kobra",nil,20000],
										["optic_LRPS",nil,350000],
										["optic_mas_PSO_nv_eo",nil,40000]
									]
                                ];
                        };
                };
        };
       
        case "gun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a Firearms license!"};
                        default
                        {
                                ["Billy Joe's Firearms",
                                        [
                                                ["RH_g17",nil,35000],
                                                ["RH_g19",nil,40000],
                                                ["RH_g19t",nil,45000],
                                                ["RH_m9",nil,50000],
                                                ["hgun_Rook40_F",nil,55000],
												["hgun_P07_F",nil,55000],
												["RH_gsh18",nil,65000],
                                                ["RH_15Rnd_9x19_M9",nil,1250],
												["RH_17Rnd_9x19_g17",nil,1250],
                                                ["16Rnd_9x21_Mag",nil,1250],
                                                ["RH_18Rnd_9x19_gsh",nil,1250]
                                        ]
                                ];
                        };
                };
        };
		
        case "rifle":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rifle): {"You don't have a Rifle license!"};
                        default
                        {
                                ["Hunting Rifle Shop",
                                        [
                                                ["arifle_SDAR_F","Turtle Harpoon",30000],
												["A3L_CZ550",nil,75000],
												["A3L_CZ550mag",nil,100],
												["20Rnd_556x45_UW_mag","Underwater magazine",750],
                                                ["A3L_CZ550Scope",nil,36000]
                                        ]
                                ];
                        };
                };
        };		
       
        case "gang":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["Hideout Armament",
                                        [
                                                ["A3L_Glock17",nil,17600],
												["A3L_Glock17mag",nil,500],
												
												["A3L_UZI",nil,37250],
												["A3L_UZImag",nil,950]												
                                        ]
                                ];
                        };
                };
        };
       
        case "genstore":
        {
                ["Altis General Store",
                        [
								["ItemMap",nil,60],
                                ["tf_fadak",nil,1000],
                                ["Binocular",nil,1250],
                                ["tf_microdagr",nil,50],
                                ["ToolKit",nil,500],
								["FirstAidKit",nil,150],
                                ["ItemCompass",nil,500],
                                ["NVGoggles",nil,7500],
                                ["Chemlight_red",nil,200],
                                ["Chemlight_yellow",nil,200],
                                ["Chemlight_green",nil,200],
                                ["Chemlight_blue",nil,200],
                                ["Tv_Camera","TV Camera(Secondary Slot)",25200]
                        ]
                ];
        };
};
