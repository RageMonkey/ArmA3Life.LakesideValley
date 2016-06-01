/*
	File: fn_removePitems.sqf
	Author: Johnny Tappia AKA Nicholas Angel
	
	Description:
	Removes the targetted players assigned items
*/
    private["_unit"];
	    if(isNull _unit) exitWith {};
        if(!isPlayer _unit) exitWith {};
		if("ItemMap" in (assignedItems  player)) then {
		removeAllassignedItems player;
		hint format [" Your Radio and GPS have been Removed"];
		player addItem "ItemMap";
		player assignItem "ItemMap";
		} else {
		
            removeAllAssignedItems player;
            hint format [" Your Radio and GPS have been Removed"];};