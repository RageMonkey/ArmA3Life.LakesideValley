/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{

	// Boats
	case "A3L_Ship": {100};
	case "A3L_Jetski_yellow": {15};
	case "A3L_Jetski": {2};
	
	// cars
    case "Jonzie_Mini_Cooper": {35};
	case "A3L_Veyron": {50};
	case "A3L_Veyron_red": {50};
	case "A3L_Veyron_black": {50};
	case "A3L_Veyron_white": {50};
	case "A3L_Veyron_orange": {50};

	case "S_Rangerover_Black": {80};
	case "S_Rangerover_Red": {80};
	case "S_Rangerover_Blue": {80};
	case "S_Rangerover_Green": {80};
	case "S_Rangerover_Purple": {80};
	case "S_Rangerover_Grey": {80};
	case "S_Rangerover_Orange": {80};
	case "S_Rangerover_White": {80};
	
	case "DAGEvoXU10": {35};
	
	case "A3L_RX7_Blue": {45};
	case "A3L_RX7_Red": {45};
	case "A3L_RX7_White": {45};
	case "A3L_RX7_Black": {45};
	
	case "S_Vantage_Red": {45};
	case "S_Vantage_Blue": {45};
	case "S_Vantage_Yellow": {45};
	case "S_Vantage_Black": {45};
	case "S_Vantage_LightBlue": {45};
	case "S_Vantage_Purple": {45};
	case "S_Vantage_White": {45};	
	
    case "A3L_GMC_Van_White": {100};
    case "A3L_GMC_Van_Black": {100};
    case "A3L_GMC_Van_DarkBlue": {100};
    case "A3L_GMC_Van_Red": {100};
    case "A3L_GMC_Van_Yellow": {100};
    case "A3L_GMC_Van_Pink": {100};
    case "A3L_GMC_Van_Grey": {100};
    case "A3L_GMC_Van_Purple": {100};
    case "A3L_GMC_Van_Orange": {100};

	case "A3L_ChargerUC": {25};
	case "A3L_ChargerUCWhite": {25};

	case "A3L_CVWhite": {25};
	case "A3L_CVBlack": {25};
	case "A3L_CVGrey": {25};
	case "A3L_CVRed": {25};
	case "A3L_CVPink": {25};
	case "A3L_CVBlue": {25};
	
	case "A3L_CVPILBFD": {25};
	
	case "A3L_CVPIUC": {25};
	case "A3L_CVPIUCBlack": {25};
	case "A3L_CVPIUCWhite": {25};
	case "A3L_CVPIUCGrey": {25};
	case "A3L_CVPIUCRed": {25};
	case "A3L_CVPIUCPink": {25};
	case "A3L_CVPIUCBlue": {25};
	
	case "Jonzie_Mini_Cooper": {25};

	case "S_McLarenP1_Black": {25};
	case "S_McLarenP1_Blue": {25};
	case "S_McLarenP1_Orange": {25};
	case "S_McLarenP1_White": {25};
	case "S_McLarenP1_Yellow": {25};
	case "S_McLarenP1_Silver": {25};
	
	case "S_PorscheRS_Black": {25};
	case "S_PorscheRS_Yellow": {25};
	case "S_PorscheRS_White": {25};
	
	case "A3L_EvoXDarkGreen": {50};
	case "A3L_OffGreen": {50};
	case "A3L_EvoXOffYellow": {50};
	case "A3L_EvoXYellow": {50};
	case "A3L_EvoXPink": {50};
	case "A3L_EvoXPurple": {50};
	case "A3L_EvoXWhite": {50};
	case "A3L_EvoXBlack": {50};
	case "A3L_EvoXRed": {50};
	
	
    case "AM_Holden_RBlue": {45};
	case "AM_Holden_RRed": {45};
	case "AM_Holden_RWhite": {45};
	case "AM_Holden_RBlack": {45};
	
	case "IVORY_REV": {25};
	case "IVORY_R8SPYDER": {25};
	case "IVORY_R8": {25};
	case "IVORY_PRIUS": {25};
	case "A3L_M3": {25};
	case "A3L_EvoXFPBLBSO": {25};
	
	 case "A3L_Citreon_C4_Orange": {55};
    case "A3L_Citreon_C4_Purple": {55};
    case "A3L_Citreon_C4_Grey": {55};
    case "A3L_Citreon_C4_Pink": {55};
    case "A3L_Citreon_C4_Yellow": {55};
    case "A3L_Citreon_C4_Red": {55};
    case "A3L_Citreon_C4_DarkBlue": {55};
    case "A3L_Citreon_C4_Black": {55};
    case "A3L_Citreon_C4_White": {55};


    case "A3L_Citreon_DS3_Orange": {55};
    case "A3L_Citreon_DS3_Purple": {55};
    case "A3L_Citreon_DS3_Grey": {55};
    case "A3L_Citreon_DS3_Pink": {55};
    case "A3L_Citreon_DS3_Yellow": {55};
    case "A3L_Citreon_DS3_Red": {55};
    case "A3L_Citreon_DS3_DarkBlue": {55};
    case "A3L_Citreon_DS3_Black": {55};
    case "A3L_Citreon_DS3_White": {55};
	
	case "A3L_Jeep_Cherokee_Red": {55};
	case "A3L_Jeep_Cherokee_White": {55};
	case "A3L_Jeep_Cherokee_Black": {55};
	case "A3L_Jeep_Cherokee_DarkBlue": {55};
	
	
	case "A3L_Touareg_White": {45};
    case "A3L_Touareg_Orange": {45};
    case "A3L_Touareg_Purple": {45};
    case "A3L_Touareg_Grey": {45};
    case "A3L_Touareg_Red": {45};
    case "A3L_Touareg_Pink": {45};
    case "A3L_Touareg_Yellow": {45};
    case "A3L_Touareg_Darkblue": {45};
    case "A3L_Touareg_Black": {45};


	case "A3L_GrandCaravanUC": {25};
	case "A3L_GrandCaravanUCBlack": {25};
	
	case "A3L_Bus": {30};
	
	case "A3L_TaurusFPBLBPD": {25};
	case "A3L_TaurusFPBLBCSO": {25};
	case "A3L_TaurusFPBPD": {25};
	case "A3L_TaurusFPBPDGM": {25};
	case "A3L_TaurusFPBCSO": {25};
	case "A3L_TaurusUCBlack": {25};
	case "A3L_TaurusUCGrey": {25};
	case "A3L_TaurusUCWhite": {25};
	case "A3L_TaurusUCBlue": {25};
	
	case "A3L_CVPIFPBPD": {50};
	case "A3L_CVPIFPBCSO": {25};
	case "A3L_CVPIFPBFG": {25};
	case "A3L_CVPIFPBLBPD": {50};
	case "A3L_CVPIFPBLBFG": {25};
	case "cg_h2_sert": {100};

	case "A3L_TahoeUCPB": {25};
	case "A3L_TahoeUC": {25};
	case "A3L_TahoeUCGMPB": {25};
	case "A3L_TahoeCSOLBPB": {25};
	
	case "A3L_jailBus": {100};
	
	case "A3L_Suburban": {25};
	case "A3L_SuburbanCSO": {25};
	case "A3L_SuburbanFG": {25};
	
	case "A3L_AmberLamps": {25};
	case "A3L_Laddertruck": {25};
	
	case "A3L_Karts": {5};	
	case "A3L_Towtruck": {30};
	case "M1030": {25};

	case "A3L_Escort": {25};
	case "A3L_EscortTaxi": {25};
	case "A3L_EscortBlue": {25};
	case "A3L_EscortWhite": {25};
	case "A3L_EscortPink": {25};
	
	case "A3L_PuntoRed": {35};
	case "A3L_PuntoBlack": {35};
	case "A3L_PuntoWhite": {35};
	case "A3L_PuntoGrey": {35};
	
	case "A3L_FordKaBlue": {35};
	case "A3L_FordKaRed": {35};
	case "A3L_FordKaBlack": {35};
	case "A3L_FordKaWhite": {35};
	case "A3L_FordKaGrey": {35};
	
	case "A3L_RegalBlack": {35};
	case "A3L_RegalBlue": {35};
	case "A3L_RegalOrange": {35};
	case "A3L_RegalRed": {35};
	case "A3L_RegalWhite": {35};
	
	case "A3L_JeepWhiteBlack": {35};
	case "A3L_JeepGreenBlack": {35};
	case "A3L_JeepRedTan": {35};
	case "A3L_JeepRedBlack": {35};
	case "A3L_JeepGrayBlack": {35};
	
	case "A3L_SuburbanWhite": {45};
	case "A3L_SuburbanBlue": {45};
	case "A3L_SuburbanRed": {45};
	case "A3L_SuburbanBlack": {45};
	case "A3L_SuburbanGrey": {45};
	case "A3L_SuburbanOrange": {45};
	
	case "A3L_TahoeWhite": {45};
	case "A3L_TahoeRed": {45};
	case "A3L_TahoeBlue": {45};
	
	case "A3L_Camaro": {55};
	
	case "A3L_Taurus": {60};
	case "A3L_TaurusBlack": {60};
	case "A3L_TaurusBlue": {60};
	case "A3L_TaurusRed": {60};
	case "A3L_TaurusBlue": {60};
	
	case "A3L_Challenger": {60};
	case "A3L_ChallengerGreen": {60};
	case "A3L_ChallengerRed": {60};
	case "A3L_ChallengerWhite": {60};
	case "A3L_ChallengerBlack": {60};
	case "A3L_ChallengerBlue": {60};
	
	case "A3L_ChargerBlack": {60};
	case "A3L_ChargerWhit": {60};
	case "A3L_ChargerCstm": {60};
	
	case "A3L_VolksWagenGolfGTired": {35};
	case "A3L_VolksWagenGolfGTiblack": {35};
	case "A3L_VolksWagenGolfGTiblue": {35};
    case "A3L_VolksWagenGolfGTiwhite": {35};
	
	case "A3L_AMC": {35};
	case "A3L_AMXRed": {35};
	case "A3L_AMXWhite": {35};
	case "A3L_AMXBlue": {35};
	case "A3L_AMXGL": {35};
	
	case "A3L_VolvoS60RBlack": {35};
	case "A3L_VolvoS60Rred": {35};
	
	case "S_Skyline_Red": {35};
	case "S_Skyline_Blue": {35};
	case "S_Skyline_Black": {35};
	case "S_Skyline_Yellow": {35};
	case "S_Skyline_Purple": {35};
	case "S_Skyline_White": {35};
	
	
	case "A3L_Cooper_concept_blue": {25};
	case "A3L_Cooper_concept_black": {25};
	case "A3L_Cooper_concept_red": {25};
	case "A3L_Cooper_concept_white": {25};
	
	case "A3L_Ferrari458black": {25};
	case "A3L_Ferrari458white": {25};
	case "A3L_Ferrari458blue": {25};
	
	case "A3L_GrandCaravan": {25};
	case "A3L_GrandCaravanBlk": {25};
	case "A3L_GrandCaravanBlue": {25};
	case "A3L_GrandCaravanGreen": {25};
	case "A3L_GrandCaravanRed": {25};
	case "A3L_GrandCaravanPurple": {25};
	
	
	case "Jonzie_Viper": {60};
	case "A3L_F350Black": {85};
	case "A3L_F350Blue": {85};
	case "A3L_F350Red": {85};
	case "cg_rv_camper": {200};
	case "A3L_F350White": {85};
	case "A3L_Dumptruck": {130};
	case "A3L_Renault_Magnum": {500};

	// default
	case "B_G_Offroad_01_F": {65};
	case "B_Quadbike_01_F": {25};
	case "C_Hatchback_01_sport_F": {45};
	case "C_Van_01_transport_F": {100};
	case "I_G_Van_01_transport_F": {100};
	case "C_Van_01_box_F": {150};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {58};
	case "B_Heli_Light_01_F": {90};
	case "O_Heli_Light_02_unarmed_F": {210};
	case "I_Heli_Transport_02_F": {375};
	case "EC635_Unarmed": {200};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	default {-1};
};