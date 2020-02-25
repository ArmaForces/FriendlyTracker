#include "script_component.hpp"
/*
 * Author: 3Mydlo3
 * Function checks if unit/group/vehicle is trackable.
 * - Is not invisible
 * - Has tracker (unit or anyone in vehicle)
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

if (_object isEqualType grpNull) then {
    _object = leader _object;
};

// We don't want invisible objects if disabled
if (!GVAR(showInvisible) && {isObjectHidden _object}) exitWith {false};

// If GPS mode is disabled all object are trackable.
if (!GVAR(GPS)) exitWith {true};

// If object is vehicle check if anyone inside has tracker
if (_object isKindOf "AllVehicles") exitWith {
    (crew _object) findIf {[_x] call FUNC(hasTracker)} != -1
};

[_object] call FUNC(hasTracker);
