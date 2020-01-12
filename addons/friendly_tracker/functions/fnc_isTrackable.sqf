#include "script_component.hpp"
/*
 * Author: 3Mydlo3
 * Function checks if unit/group/vehicle is trackable.
 * (if can be seen on the map and can see others)
 *
 * Arguments:
 * 0: The thing that will be checked if it should be trackable <OBJECT/GROUP>
 *
 * Return Value:
 * 0: Is trackable <BOOL>
 *
 * Example:
 * [bob] call afft_friendly_tracker_fnc_isTrackable
 *
 * Public: No
 */

params ["_object"];

// If GPS mode is disabled all object are trackable.
if (!GVAR(GPS)) exitWith {true};

if (_object isEqualType grpNull) then {
    _object = leader _object;
};

// If object is vehicle check if anyone inside has tracker
if (_object isKindOf "AllVehicles") exitWith {
    (crew _object) findIf {[_x] call FUNC(hasTracker)} != -1
};

[_object] call FUNC(hasTracker);
