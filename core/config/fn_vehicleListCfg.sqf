#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "dezzie_car":
	{
		_return = [
			["IVORY_PRIUS",25000],
			["IVORY_R8",130000],
			["IVORY_R8SPYDER",130000],
			["IVORY_REV",200000]
		];
	};
	case "kart_shop":
	{
		_return = [
			["A3L_Karts",10000],
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["IVORY_PRIUS",5000],
			["Jonzie_Ambulance",25000],
			["ivory_b206_rescue",45000],
			["IVORY_BELL512_RESCUE",85000]
		];
	};
	case "exo_car":
	{
		_return = [
			["A3L_Cooper_concept_blue",45000],
			["A3L_Cooper_concept_black",45000],
			["A3L_Cooper_concept_red",45000],
			["A3L_Cooper_concept_white",45000],
			
			["A3L_RX7_Blue",120000],
			["A3L_RX7_Red",120000],
			["A3L_RX7_White",120000],
			["A3L_RX7_Black",120000],
			
			
			["A3L_AMC",80000],
			["A3L_AMXRed",80000],
			["A3L_AMXWhite",80000],
			["A3L_AMXBlue",80000],
			["A3L_AMXGL",85000],
			["A3L_VolvoS60RBlack",70000],
			["A3L_VolvoS60Rred",70000],
			["S_Skyline_Red",95000],
			["S_Skyline_Blue",95000],
			["S_Skyline_Black",95000],
			["S_Skyline_Yellow",95000],
			["S_Skyline_Purple",95000],
			["S_Skyline_White",95000],
			["S_Vantage_Red",350000],
			["S_Vantage_Blue",350000],
			["S_Vantage_Black",350000],
			["S_Vantage_Yellow",350000],
			["S_Vantage_LightBlue",350000],
			["S_Vantage_Purple",350000],
			["S_Vantage_White",350000],
			["A3L_Ferrari458black",530000],
			["A3L_Ferrari458white",530000],
			["A3L_Ferrari458blue",530000],
			["S_PorscheRS_Black",450000],
			["S_PorscheRS_Yellow",450000],
			["S_PorscheRS_White",450000],
			["S_McLarenP1_Black",850000],
			["S_McLarenP1_Blue",850000],
			["S_McLarenP1_Orange",850000],
			["S_McLarenP1_White",850000],
			["S_McLarenP1_Yellow",850000],
			["S_McLarenP1_Silver",850000],
			["A3L_EvoXDarkGreen",250000],
            ["A3L_OffGreen",250000],
            ["A3L_EvoXOffYellow",250000],
            ["A3L_EvoXYellow",250000],
            ["A3L_EvoXPink",250000],
            ["A3L_EvoXPurple",250000],
            ["A3L_EvoXWhite",250000],
            ["A3L_EvoXBlack",250000],
            ["A3L_EvoXRed",250000],
			["AM_Holden_White",785000],
			["AM_Holden_Black",785000],
			["AM_Holden_Green",785000],
			["AM_Holden_DarkGreen",785000],
			["AM_Holden_OffGreen",485000],
			["AM_Holden_blue",485000],
			["AM_Holden_OffYellow",485000],
			["AM_Holden_Pink",485000],
			["AM_Holden_Purple",485000],
			["AM_Holden_Yellow",485000],
			["AM_Holden_RBlue",585000],			
			["AM_Holden_RRed",585000],
			["AM_Holden_RWhite",585000],
			["AM_Holden_RBlack",585000],
			["A3L_Veyron",1500000],
			["A3L_Veyron_red",1500000],
			["A3L_Veyron_black",1500000],
			["A3L_Veyron_white",1500000],
			["A3L_Veyron_orange",1500000]
		];
	};
	case "chev_car":
	{
		_return = [
			["A3L_SuburbanWhite",190000],
			["A3L_SuburbanBlue",190000],
			["A3L_SuburbanRed",190000],
			["A3L_SuburbanBlack",190000],
			["A3L_SuburbanGrey",190000],
			["A3L_SuburbanOrange",190000],
			["A3L_TahoeWhite",105000],
			["A3L_TahoeRed",105000],
			["A3L_TahoeBlue",105000],
			["A3L_Camaro",195000]
		];
	};
	case "ford_car":
	{
		_return = [
			["A3L_FordKaBlue",30000],
			["A3L_FordKaRed",30000],
			["A3L_FordKaBlack",30000],
			["A3L_FordKaWhite",30000],
			["A3L_FordKaGrey",30000],
			["A3L_CVWhite",60000],
			["A3L_CVBlack",60000],
			["A3L_CVGrey",60000],
			["A3L_CVRed",60000],
			["A3L_CVPink",60000],
			["A3L_CVBlue",60000],
			["A3L_Taurus",90000],
			["A3L_TaurusBlack",90000],
			["A3L_TaurusBlue",90000],
			["A3L_TaurusRed",90000],
			["A3L_TaurusWhite",90000]

		];
	};
	case "dodge_car":
	{
		_return =
		[

			["A3L_GrandCaravan",70000],
			["A3L_GrandCaravanBlk",70000],
			["A3L_GrandCaravanBlue",70000],
			["A3L_GrandCaravanGreen",70000],
			["A3L_GrandCaravanRed",70000],
			["A3L_GrandCaravanPurple",70000],
			["A3L_Challenger",95000],
			["A3L_ChallengerGreen",95000],
			["A3L_ChallengerRed",95000],
			["A3L_ChallengerWhite",95000],
			["A3L_ChallengerBlack",95000],
			["A3L_ChallengerBlue",95000],
			["A3L_ChargerBlack",115000],
			["A3L_ChargerWhit",115000],
			["A3L_ChargerCstm",115000],
			["Jonzie_Viper",450000]
		];
	};
	case "civ_car":
	{
		_return =
		[
			["Jonzie_Mini_Cooper",10000],
			["Jonzie_Mini_Cooper_R_spec",25000],
			["B_Quadbike_01_F",3000],
            ["A3L_Citreon_C4_Orange",23000],
            ["A3L_Citreon_C4_Purple",23000],
            ["A3L_Citreon_C4_Grey",23000],
            ["A3L_Citreon_C4_Pink",23000],
            ["A3L_Citreon_C4_Yellow",23000],
            ["A3L_Citreon_C4_Red",23000],
            ["A3L_Citreon_C4_DarkBlue",23000],
            ["A3L_Citreon_C4_Black",23000],
            ["A3L_Citreon_C4_White",23000],


            ["A3L_Citreon_DS3_Orange",20000],
            ["A3L_Citreon_DS3_Purple",20000],
            ["A3L_Citreon_DS3_Grey",20000],
            ["A3L_Citreon_DS3_Pink",20000],
            ["A3L_Citreon_DS3_Yellow",20000],
            ["A3L_Citreon_DS3_Red",20000],
            ["A3L_Citreon_DS3_DarkBlue",20000],
            ["A3L_Citreon_DS3_Black",20000],
            ["A3L_Citreon_DS3_White",20000],
			["A3L_RegalBlack",22000],
			["A3L_RegalBlue",22000],
			["A3L_RegalOrange",22000],
			["A3L_RegalRed",22000],
			["A3L_RegalWhite",22000],
			["A3L_JeepWhiteBlack",35000],
			["A3L_JeepGreenBlack",35000],
			["A3L_JeepRedTan",35000],
			["A3L_JeepRedBlack",35000],
			["A3L_JeepGrayBlack",35000],
			["A3L_Jeep_Cherokee_Red",35000],
			["A3L_Jeep_Cherokee_White",35000],
			["A3L_Jeep_Cherokee_Black",35000],
			["A3L_Jeep_Cherokee_DarkBlue",35000],			
			["A3L_Touareg_White",19000],
            ["A3L_Touareg_Orange",19000],
            ["A3L_Touareg_Purple",19000],
            ["A3L_Touareg_Grey",19000],
            ["A3L_Touareg_Red",19000],
            ["A3L_Touareg_Pink",19000],
            ["A3L_Touareg_Yellow",19000],
            ["A3L_Touareg_Darkblue",19000],
            ["A3L_Touareg_Black",19000],
			["S_Rangerover_Black",85000],
			["S_Rangerover_Red",85000],
			["S_Rangerover_Blue",85000],
			["S_Rangerover_Green",85000],
			["S_Rangerover_Grey",85000],
			["S_Rangerover_White",85000],
	        ["A3L_GMC_Van_Orange",85000],
            ["A3L_GMC_Van_Purple",85000],
            ["A3L_GMC_Van_Grey",85000],
            ["A3L_GMC_Van_Pink",85000],
            ["A3L_GMC_Van_Yellow",85000],
            ["A3L_GMC_Van_Red",85000],
            ["A3L_GMC_Van_DarkBlue",85000],
            ["A3L_GMC_Van_Black",85000],
            ["A3L_GMC_Van_White",85000]
		];
	};
	case "civ_truck":
	{
		_return =
		[
			["A3L_F350Black",105000],
			["A3L_F350Blue",105000],
			["A3L_F350Red",105000],
			["cg_rv_camper",10000],
			["A3L_F350White",105000],
			["A3L_Dumptruck",120000],
			["C_Van_01_box_F",90000],
			["C_Van_01_transport_F",135000],
			["A3L_Bus",200000],
			["A3L_Towtruck",75000],
			["A3L_Renault_Magnum",450000]
		];
	};
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",5000],
			["B_G_Offroad_01_F",100000],
			["A3L_FORD_RAPTOR_BLACK",400000]
		];
	};
	
	case "reb_full":
	{
		_return =
		[
			["B_Quadbike_01_F",5000],
			["B_G_Offroad_01_F",100000],
			["A3L_FORD_RAPTOR_BLACK",400000],
	     	["wirk_h3_limo",500000],
			["B_Heli_Light_01_F",700000],
			["civ_black_po30",1000000]
		];
	};
	
	case "cop_car":
	{
		_return pushBack
		["A3L_CVPIFPBLBPD",15000];
		
		if(__GETC__(life_coplevel) > 2) then
			{
				_return pushBack
				["DAGEvoXU10",25000];
			};
		
		if(__GETC__(life_coplevel) > 3) then
			{
				_return pushBack
				["A3L_CVPIUCBLACK",30000];
				_return pushBack
				["A3L_CVPIUCRED",30000];
			};
			
		if(__GETC__(life_coplevel) > 4) then
			{
				_return pushBack
				["a3l_subaru_police",50000];
			};
		if(__GETC__(life_coplevel) > 5) then
			{
				_return pushBack
				["A3L_TahoeLBPB",50000];
				_return pushBack
			    ["IVORY_REV",100000];
			};

	};
	case "civ_air":
	{
		_return =
		[
			["C_Heli_Light_01_civil_F",300000],
			["ivory_b206",350000],
			["ivory_b206_news",400000],
			["IVORY_BELL512",500000],
			["O_Heli_Light_02_unarmed_F",750000],
			["bwi_a3_t6a_nta",300000],
			["IVORY_CRJ200_1",1000000]
		];
	};
	case "cop_air":
	{
		_return =
		[
			["ivory_b206_police",45000],
			["IVORY_BELL512_POLICE",85000]
		];
	};
	case "cop_airhq":
	{
		_return =
		[
			["ivory_b206_police",45000],
			["IVORY_BELL512_POLICE",85000]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",30000],
			["C_Boat_Civil_01_F",175000],
			["A3L_Ship",700000],
			["A3L_Jetski",150000],
			["A3L_Jetski_yellow",150000]
		];
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
