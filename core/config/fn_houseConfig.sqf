/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for buyable houses?
*/
private["_house"];
_house = [_this,0,"",[""]] call BIS_fnc_param;
if(_house == "") exitWith {[]};

/*
	Return Format:
	[price,# of containers allowed]
*/
switch (true) do {
	case (_house in ["Land_i_House_Big_02_V1_F","Land_i_House_Big_02_V2_F","Land_i_House_Big_02_V3_F"]): {[4000000,3]};
	case (_house in ["Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V2_F","Land_i_House_Big_01_V3_F"]): {[5000000,4]};
	case (_house in ["Land_i_Garage_V1_F","Land_i_Garage_V2_F"]): {[1000000,0]};
	case (_house in ["Land_i_House_Small_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_01_V3_F"]): {[2500000,2]};
	case (_house in ["Land_i_House_Small_02_V1_F","Land_i_House_Small_02_V2_F","Land_i_House_Small_02_V3_F"]): {[2500000,2]};
	case (_house in ["Land_i_House_Small_03_V1_F"]): {[4000000,3]};
	case (_house in ["Land_i_Stone_HouseSmall_V2_F","Land_i_Stone_HouseSmall_V1_F","Land_i_Stone_HouseSmall_V3_F"]): {[1500000,1]};
	case (_house in ["Land_i_Addon_02_V1_F"]): {[1500000,1]};
	case (_house in ["Land_Slum_House01_F","Land_Slum_House03_F","Land_Slum_House02_F","Land_cargo_house_slum_F"]): {[1500000,1]};
	case (_house in ["Land_Cargo_House_V1_F","Land_Cargo_House_V2_F","Land_Cargo_House_V3_F","Land_Medevac_house_V1_F","Land_Research_house_V1_F"]): {[1500000,1]};
	case (_house in ["Land_mbg_ger_pub_1","Land_mbg_ger_pub_2"]): {[4000000,4]};
	case (_house in ["Land_e76_us_house02a","Land_e76_us_house01","Land_e76_us_house01a","Land_e76_us_house01a","Land_e76_us_house01b"]): {[1000000,4]};
	case (_house in ["Land_A_Villa_EP1"]): {[5000000,6]};
	case (_house in ["Land_MBG_Garage_Single_D","Land_MBG_Garage_Single_A","Land_MBG_Garage_Single_B","Land_MBG_Garage_Single_C"]): {[500000,0]};
	case (_house in ["Land_HouseV_1I4"]): {[1000000,2]};
	
	//A3L houses
	// case (_house in ["Land_e76_us_garage01"]): {[200000,0]};
	// case (_house in ["Land_e76_us_house01"]): {[300000,3]};
	// case (_house in ["Land_e76_us_house02"]): {[500000,3]};
	// case (_house in ["Land_e76_us_house01a"]): {[300000,3]};
	// case (_house in ["Land_e76_us_house02a"]): {[500000,3]};

	default {[]};
};