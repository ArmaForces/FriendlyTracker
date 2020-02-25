#include "script_component.hpp"
/*
 * Author: 3Mydlo3
 * Function checks if unit can see others on the map.
 *
 * Arguments:
 * 0: The player that will be checked if he should be able to see others on the map <OBJECT>
 *
 * Return Value:
 * 0: Can track <BOOL>
 *
 * Example:
 * [bob] call afft_friendly_tracker_fnc_canTrack
 *
 * Public: No
 */

params ["_object"];

// If GPS mode is disabled all units can track.
if (!GVAR(GPS)) exitWith {true};

[_object] call FUNC(hasTracker)
