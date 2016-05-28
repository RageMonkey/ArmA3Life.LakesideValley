#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Lakeside Police Department Shop"];

_ret = [];
switch (_filter) do
{
//uniforms
	case 0:
	{  
	    
		_ret pushBack ["cadet_uni","Cadet Uniform",250]; 
        _ret pushBack ["TCG_PDO","Cadet 2",250];
	
		//Level 2 (Constable)
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["police_uni2","Constable Shirt",250];
		};
		
		//Level 4 (Sergeant)
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["police_uni1","Patrol Uniform",250];
		};
		
		//Level 5 (Inspector)
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["police_uni3","Chief Uniform",250];
		};		  
	};
	
	//hats
	case 1:
	{

		    _ret pushBack ["H_Cap_police","Police Cap",100];
		
		
		if(__GETC__(life_coplevel) > 1) then
		{
            _ret pushBack ["Campaign_Hat_Dark","Patrol Hat",100];
		};
		
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["TCG_swathelmet","SWAT Helmet",150];
		};
		
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["Campaign_Hat_Washedout","Chiefs Hat",150];
		};
	};
	
	//glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
			
		];
	};
	
	//vests
	case 3:
	{
		    _ret pushBack ["V_Rangemaster_belt","Cadet Belt",500];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["A3L_policevest2","Police Vest White",1000];
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["A3L_policevest1","Police Vest Yellow",1000];
		};
		
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["TCG_policevest1","Kevlar High Capacity Vest",1000];
		};
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
