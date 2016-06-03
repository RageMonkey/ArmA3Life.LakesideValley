/*
	File: fn_dressing.sqf
	Author: Johnny Tappia
	
	Description: Handles the function for the dressing item for my custom medic script
*/
private["_target","_var"];
_target = cursorTarget;
if (side player == west) exitWith {hint "You must be a EMS to use this item"};
if (side player == civ) exitWith {hint "You must be a EMS to use this item"};
switch (true) do
	{
		case (player distance (getMarkerPos "hospital_marker") < 30): {_var = "1";};
		case (player distance (getMarkerPos "hospital_2") < 75): {_var = "1";};
		case (player distance (getMarkerPos "hospital_3") < 40) : {_var = "1";};
		default {_var = "";};
	};
if(_var == "") then 
	{
		hint "You must be at a hospital to use this item.";
	}
else
	{
	life_action_inUse = true;
		player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
		sleep 6;
		player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
		sleep 6;
		player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
		sleep 6;
		[[],"life_fnc_dressing",_target,false] call BIS_fnc_MP;
		life_action_inUse = false;
		hint "You have just applied a dressing to the patient";
		sleep 300;
	};