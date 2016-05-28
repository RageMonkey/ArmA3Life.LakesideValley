/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["I_FEM_AAF_long","Female Long",5000],
			["B_FEM_AAF_Rolled","Female Rolled",5000],
			["B_FEM_NATO_Rolled","Female Rolled 3",5000],
			["U_I_pilotCoveralls",nil,5000],
			["U_IG_Guerilla1_1",nil,5000],
			["U_I_G_Story_Protagonist_F",nil,7500],
			["U_I_G_resistanceLeader_F",nil,11500],
			["U_IG_leader","Guerilla Leader",15340],
			["U_I_GhillieSuit",nil,70000],
			["U_I_FullGhillie_lsh",nil,70000],
			["U_B_FullGhillie_lsh",nil,70000],
		    ["TRYK_U_B_ARO1_BLK_CombatUniform",nil,5500],
            ["TRYK_U_B_ARO1_BLK_R_CombatUniform",nil,5700],
            ["TRYK_U_B_ARO1_CBR_CombatUniform",nil,5500],
            ["TRYK_U_B_ARO1_CBR_R_CombatUniform",nil,5900],
            ["TRYK_U_B_ARO1_GR_CombatUniform",nil,5500],
            ["TRYK_U_B_ARO1_GR_R_CombatUniform",nil,5400],
            ["TRYK_U_B_ARO1_GRY_CombatUniform",nil,4400],
            ["TRYK_U_B_ARO1_GRY_R_CombatUniform",nil,5800],
            ["TRYK_U_B_ARO2_CombatUniform",nil,5500],
            ["TRYK_U_B_ARO2R_CombatUniform",nil,5500],
            ["TRYK_C_AOR2_T",nil,5500],
            ["TRYK_U_B_AOR2_BLK_CombatUniform",nil,6000],
            ["TRYK_U_B_AOR2_BLK_R_CombatUniform",nil,5500],
            ["TRYK_U_B_AOR2_GRY_CombatUniform",nil,5700],
            ["TRYK_U_B_AOR2_GRY_R_CombatUniform",nil,5500],
            ["TRYK_U_B_AOR2_OD_CombatUniform",nil,5900],
            ["TRYK_U_B_AOR2_OD_R_CombatUniform",nil,5500],
            ["TRYK_U_B_BLKBLK_CombatUniform",nil,5400],
            ["TRYK_U_B_BLKBLK_R_CombatUniform",nil,4400],
            ["TRYK_U_B_BLKOCP_CombatUniform",nil,5800],
            ["TRYK_U_B_BLKOCP_R_CombatUniformTshirt",nil,5500],
            ["TRYK_U_B_BLKTAN_CombatUniform",nil,5500],
            ["TRYK_U_B_BLKTANR_CombatUniformTshirt",nil,5500],
            ["TRYK_U_B_BLKTAN_CombatUniform",nil,6000],
            ["TRYK_U_B_fleece_UCP",nil,5500],
            ["TRYK_U_B_fleece",nil,5700],
            ["TRYK_U_Bts_PCUs",nil,5500],
            ["TRYK_U_Bts_GRYGRY_PCUs",nil,5900],
            ["TRYK_U_Bts_UCP_PCUs",nil,5500],
            ["TRYK_U_Bts_Wood_PCUs",nil,5400],
            ["TRYK_U_Bts_PCUODs",nil,4400],
			["TRYK_U_B_PCUHsW3",nil,6300],
			["TRYK_U_hood_nc",nil,6300],
			["TRYK_U_hood_mc",nil,6300],
			["TRYK_U_denim_hood_blk",nil,6300],
			["TRYK_U_denim_jersey_blu",nil,6300],
			["TRYK_U_denim_jersey_blk",nil,6300],
			["TRYK_U_denim_hood_mc",nil,6300],
			["TRYK_T_OD_PAD",nil,6300],
			["TRYK_T_BLK_PAD",nil,6300],
            ["TRYK_U_B_PCUHs",nil,6300],
			["TRYK_U_B_PCUGHs",nil,6300],
			["TRYK_U_B_PCUODHs",nil,6300],
			["TRYK_U_B_UCP_PCUs_R",nil,6300],
			["TRYK_U_B_UCP_PCUs",nil,6300],
			["TRYK_U_B_Wood_PCUs",nil,6300],
			["TRYK_U_B_Wood_PCUs_R",nil,6300],
			["TRYK_U_B_PCUODs",nil,6300],
			["TRYK_U_hood_nc",nil,6300],
			["TRYK_T_BLK_PAD",nil,6300],
			["TRYK_T_CSAT_PAD",nil,6300],
			["TRYK_T_OD_PAD",nil,6300],
			["TRYK_T_TAN_PAD",nil,6300],
			["TRYK_T_T2_PAD",nil,6300],
			["TRYK_T_camo_3c_BG",nil,6300],
			["TRYK_T_camo_desert_marpat_BG",nil,6300],
			["TRYK_T_camo_Wood_BG",nil,6300],
			["TRYK_T_camo_wood_marpat_BG",nil,6300],
			["TRYK_T_camo_3c",nil,6300],
			["TRYK_T_camo_Desert_marpat",nil,6300]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["TRYK_H_Booniehat_AOR2",nil,1050],
			["TRYK_H_Booniehat_MARPAT_WOOD",nil,1050],
			["TRYK_H_Booniehat_AOR1",nil,1050],
			["TRYK_H_Booniehat_JSDF",nil,1050],
			["H_Bandanna_camo",nil,650],
			["H_MilCap_oucamo",nil,1200],
			["jokermask","Joker Mask",35000],
			["TRYK_Kio_Balaclava","Ghost Balaclava",15000],
			["A3L_Halloween_JigSaw","JigSaw Mask",35000],
			["kio_skl_msk","Black Skull Mask",52000],
			["kio_skl_msk_grn","Green Skull Mask",52000],
			["kio_skl_msk_red","Red Skull Mask",52000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,1337],
			["G_Balaclava_combat",nil,1337],
			["G_Balaclava_lowprofile",nil,1337],
			["A3L_Balaclava",nil,1337],
			["Mask_M40","Gas Mask",20000]
		];
	};
	
	//Vest
	case 3:
	{
	   [
		    ["V_TacVest_khk",nil,18700],
			["V_TacVest_oli",nil,18700],
			["V_TacVest_brn",nil,18700],
			["V_TacVest_blk",nil,18700],
			["TRYK_V_ChestRig_L",nil,23700],
			["V_BandollierB_cbr",nil,15000],
			["V_BandollierB_rgr",nil,15000],
			["V_BandollierB_khk",nil,15000],
			["V_BandollierB_oli",nil,15000],
			["TRYK_LOC_AK_chestrig_OD",nil,7800],
			["V_HarnessO_brn",nil,7800],
			["V_HarnessO_gry",nil,7800]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_FieldPack_ocamo",nil,3000],
			["B_TacticalPack_oli","Olive Bergen",3500],
			["B_Bergen_sgg","Sage Bergen",4500],
			["B_Carryall_oli","Olive Carryall",5000],
			["B_Carryall_khk","Khaki Carryall",5000],
			["B_AssaultPack_mcamo","MTP Assault Pack",4000],
			["TRYK_B_AssaultPack_MARPAT_Wood","MARPAT Assault Pack",5500],
			["TRYK_B_AssaultPack_Type2camo","Jungle Assault Pack",5500],
			["TRYK_B_Kitbag_Base_JSDF","Jungle Kitbag",5500],
			["B_Kitbag_mcamo","MTP Kitbag",5500],
			["TRYK_B_Belt_AOR2",nil,3000],
			["TRYK_B_Belt_CYT",nil,3000],
			["TRYK_B_Belt_GR",nil,3000]
		];
	};
};