#include "script_component.hpp"
/*
 * Author: 3Mydlo3
 * Function checks if unit has tracking device in equipment
 *
 * Arguments:
 * 0: The unit that will be checked if it has a tracking device  <OBJECT>
 *
 * Return Value:
 * 0: Has tracker <BOOL>
 *
 * Example:
 * [bob] call afft_friendly_tracker_fnc_hasTracker
 *
 * Public: No
 */

params ["_unit"];

((assignedItems _unit findIf {_x isEqualTo "ItemGPS" || {["UavTerminal", _x] call BIS_fnc_inString}}) != -1)
