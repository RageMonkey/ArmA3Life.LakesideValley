#include <macro.h>
/*
        File: fn_adminAtm.sqf
        Author: ColinM9991
        Description:
*/
if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";}; 
     
while {dialog} do {
        closeDialog 0;
        sleep 0.01;
};
sleep 0.01;  
[] call life_fnc_atmMenu;