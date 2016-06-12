#include <macro.h>
/*
	File: fn_clothing_swat.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for SWAT clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Lakeside SWAT Equipment"];

_ret = [];
switch (_filter) do
{
//uniforms
	case 0: 
	{
		_ret =
		[
			["swat_uni1","SWAT Uniform",500]
		];
	};
	
	//hats
	case 1:
	{
		_ret =
		[
			["TRYK_H_PASGT_BLK","SWAT Helmet",300]
		];
	};
	
	//glasses
	case 2:
	{
		_ret =
		[
			["G_mas_wpn_bala","SWAT Balaclava",200]
		];
	};
	
	//vests
	case 3:
	{
		_ret =
		[
			["TCG_swatvest1","SWAT Vest",400]
		];
	};
				
	//bags
	case 4:
	{
		_ret =
		[
			["AM_PoliceBelt","PD Duty Belt",800]
		];
	};
};

_ret;
