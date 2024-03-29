#include <macro.h>
/*
	Master client initialization file
*/


if (!isNil "A3L_RunCode") exitwith {
	player setvariable ["lolusuck",true,true];
};

A3L_RunCode = compileFinal "
	private ""_code"";
	_code = _this select 0;
	_code = compile _code;
	[] call _code;
";

// Run Some Client Stuff
[] execVM "A3L_Stuff\jailsystem.sqf";
[] execVM "A3L_Stuff\bank.sqf";
[] execVM "A3L_Stuff\halloween.sqf";
[] execVM "A3L_Stuff\hunting.sqf";

// Needs to be removed after halloween
candy = 0;
scarylevel = 0;

// A3L CURRENT VERSION
A3L_ClientVersion = getNumber (configFile >> "CfgPatches" >> "A3L_Client2" >> "requiredVersion");

life_firstSpawn = true;
life_session_completed = false;
private["_handle","_timeStamp"];
// 0 cutText["Setting up client, please wait...","BLACK FADED"];
// 0 cutFadeOut 9999999;
_timeStamp = diag_tickTime;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log "--------------------------------- Starting ArmA 3 Life Client Init ----------------------------------";
diag_log "------------------------------------------------------------------------------------------------------";
waitUntil {!isNull player && player == player}; //Wait till the player is ready
//Setup initial client core functions
diag_log "::Life Client:: Initialization Variables";
[] call compile PreprocessFileLineNumbers "core\configuration.sqf";
diag_log "::Life Client:: Variables initialized";
diag_log "::Life Client:: Setting up Eventhandlers";
[] call life_fnc_setupEVH;
diag_log "::Life Client:: Eventhandlers completed";
diag_log "::Life Client:: Setting up user actions";
[] call life_fnc_setupActions;
diag_log "::Life Client:: User actions completed";
diag_log "::Life Client:: Waiting for server functions to transfer..";
waitUntil {(!isNil {clientGangLeader})};



A3L_Fnc_Request = player;
PublicvariableServer "A3L_Fnc_Request";
waitUntil {(!isNil {A3L_fnc_dreDeta8})};


diag_log "::Life Client:: Received server functions.";




diag_log "::Life Client:: Executed custom client functions";
0 cutText ["Waiting for the server to be ready...","BLACK FADED"];
0 cutFadeOut 99999999;
diag_log "::Life Client:: Waiting for the server to be ready..";
waitUntil{!isNil "life_server_isReady"};
waitUntil{(life_server_isReady OR !isNil "life_server_extDB_notLoaded")};
if(!isNil "life_server_extDB_notLoaded") exitWith {
	diag_log "::Life Client:: Server did not load extDB";
	999999 cutText ["The server-side extension extDB was not loaded into the engine, report this to the server admin.","BLACK FADED"];
	999999 cutFadeOut 99999999;
};
[] call SOCK_fnc_dataQuery;
waitUntil {life_session_completed};
0 cutText["Finishing client setup procedure","BLACK FADED"];
0 cutFadeOut 9999999;

//diag_log "::Life Client:: Group Base Execution";
[] spawn life_fnc_escInterupt;

switch (playerSide) do
{
	case west:
	{
		_handle = [] spawn life_fnc_initCop;
		waitUntil {scriptDone _handle};
	};
	
	case civilian:
	{
		//Initialize Civilian Settings
		_handle = [] spawn life_fnc_initCiv;
		waitUntil {scriptDone _handle};
	};
	
	case independent:
	{
		//Initialize Medics and blah
		_handle = [] spawn life_fnc_initMedic;
		waitUntil {scriptDone _handle};
	};
};

player setVariable["restrained",false,true];
player setVariable["Escorting",false,true];
player setVariable["transporting",false,true];
diag_log "Past Settings Init";
[] execFSM "core\fsm\client.fsm";
diag_log "Executing client.fsm";
waitUntil {!(isNull (findDisplay 46))};
diag_log "Display 46 Found";
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call life_fnc_keyHandler"];
player addRating 99999999;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log format["                End of Altis Life Client Init :: Total Execution Time %1 seconds ",(diag_tickTime) - _timeStamp];
diag_log "------------------------------------------------------------------------------------------------------";
life_sidechat = true;
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;
0 cutText ["","BLACK IN"];
[] call life_fnc_hudSetup;
LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
LIFE_ID_RevealObjects = ["LIFE_RevealObjects","onEachFrame","life_fnc_revealObjects"] call BIS_fnc_addStackedEventHandler;
[] call life_fnc_settingsInit;
player setVariable["steam64ID",getPlayerUID player];
player setVariable["realname",profileName,true];
life_fnc_moveIn = compileFinal
"
	player moveInCargo (_this select 0);
";

[] execVM "core\init_survival.sqf";

__CONST__(life_paycheck,life_paycheck); //Make the paycheck static.

 [] spawn {
	waitUntil {life_session_completed};
	while {true} do {
		_server = [] call TFAR_fnc_getTeamSpeakServerName;
		_channel = [] call TFAR_fnc_getTeamSpeakChannelName;

        if(!([] call TFAR_fnc_isTeamSpeakPluginEnabled && (__GETC__(life_adminlevel) < 1))) then {
        
        	cutText["Enable TFR Plugin on Teamspeak!","BLACK"] && disableUserInput true;
			waitUntil {([] call TFAR_fnc_isTeamSpeakPluginEnabled)};
			cutText["","PLAIN"] && disableUserInput false;
			
        };

		if(_server != "ROT - REIGN OF TERROR" or _channel != "TaskForceRadio" && (__GETC__(life_adminlevel) < 1)) then {
			
			cutText["Wrong TS Channel.","BLACK",0,true] && disableUserInput true;
			waitUntil {([] call TFAR_fnc_getTeamSpeakServerName) == "ROT - REIGN OF TERROR" and ([] call TFAR_fnc_getTeamSpeakChannelName) == "TaskForceRadio"};
			cutText["","PLAIN"] && disableUserInput false;;
        
        };
    	
    	sleep 5;
	};
};
[] spawn {
	while{true} do
	{
		waitUntil {visibleMap};
		waitUntil {!isNull findDisplay 54 || !visibleMap};
		if(visibleMap) then {
			findDisplay 54 displayCtrl 1 buttonSetAction 
			"
				_ctrl = findDisplay 54 displayCtrl 101;
				_text = ctrlText _ctrl;
				if (_text == '') then {
					_text = format ['%1', name player];
				} else {
					_text = format ['%1: %2', name player, _text];
				};
				_ctrl ctrlSetText _text;
			";
			waitUntil{isNull findDisplay 54};
		};
	};
};
