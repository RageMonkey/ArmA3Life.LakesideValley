/*
	File: fn_removePitems.sqf
	Author: Johnny Tappia AKA Nicholas Angel
	
	Description:
	Removes the targetted players assigned items
*/
    private["_unit"];
	    if(isNull _unit) exitWith {};
        if(!isPlayer _unit) exitWith {};
            removeAllAssignedItems player;
            hint format [" Your Radio and GPS have been Removed"];