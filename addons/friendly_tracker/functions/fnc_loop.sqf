#include "script_component.hpp"
/*
 * Author: 3Mydlo3, veteran29
 * BFT loop
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call afft_friendly_tracker_fnc_loop
 *
 * Public: No
 */

// Check if BFT is disabled
if (!GVAR(enabled)) exitWith {
    [QGVAR(stop)] call CBA_fnc_localEvent;
};

// Remove all markers
{
    deleteMarkerLocal (_x select 0);
} foreach GVAR(markers);
GVAR(markers) = [];

// If player (local) does not fulfill tracking requirements we break and schedule next loop
if (!([player] call FUNC(canTrack))) exitWith {
    [FUNC(loop), [], GVAR(refreshRate)] call CBA_fnc_waitAndExecute;
};

// Create marker for every player in game
{
    // If player is not trackable we skip him and go to the next one
    if ([_x] call FUNC(isTrackable)) then {
        // Check if player is not in vehicle or vehicle markers are off
        if (isNull objectParent _x || {!GVAR(showVehicle)}) then {
            [_x] call FUNC(createPlayerMarker);
        } else {
            [objectParent _x] call FUNC(createVehicleMarker);
        };
    };
} forEach TRACKABLE_UNITS;

// Create marker for tracked vehicles
{
    [_x] call FUNC(createVehicleMarker);
} forEach GVAR(trackedVehicles);

#define SHOW_NONE   0
#define SHOW_PLAYER 1
#define SHOW_ALL    2

// Create marker for groups if enabled
switch (true) do {
    case (GVAR(showGroups) isEqualTo SHOW_PLAYER): {
        private _group = group player;
        if (!([_group] call FUNC(isTrackable))) exitWith {};
        [_group] call FUNC(createGroupMarker);
    };
    case (GVAR(showGroups) isEqualTo SHOW_ALL): {
        {
            [_x] call FUNC(createGroupMarker);
        } forEach TRACKABLE_GROUPS;
    };
};

// Schedule next loop
[FUNC(loop), [], GVAR(refreshRate)] call CBA_fnc_waitAndExecute;
