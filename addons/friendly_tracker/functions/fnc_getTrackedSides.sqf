#include "script_component.hpp"
/*
 * Author: 3Mydlo3
 * Returns trackable sides for given side.
 *
 * Arguments:
 * 0: Side for which we want trackable sides <SIDE>
 *
 * Return Value:
 * 0: Array of trackable sides <ARRAY>
 *
 * Example:
 * call afft_friendly_tracker_fnc_getTrackedSides
 *
 * Public: No
 */

params [["_side", playerSide]];

private _trackedSides = switch (GVAR(showSides)) do {
    case (SIDES_FRIENDLY): {([_side] call BIS_fnc_friendlySides) - [sideFriendly]};
    case (SIDES_PLAYER): {[_side]};
    case (SIDES_ALL): {[WEST, EAST, INDEPENDENT]};
};

if (GVAR(showSideCivilian)) then {
    _trackedSides pushBackUnique CIVILIAN;
} else {
    if (_side isEqualTo CIVILIAN) exitWith {};
    _trackedSides = _trackedSides - [CIVILIAN];
};

_trackedSides
