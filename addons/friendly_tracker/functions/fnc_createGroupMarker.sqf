#include "script_component.hpp"
/*
 * Author: 3Mydlo3
 * Function creates BFT marker on group's position
 *
 * Arguments:
 * 0: Group to create marker for <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [group bob] call afft_friendly_tracker_fnc_createGroupMarker
 *
 * Public: No
 */

params ["_group"];

private _groupName = groupId _group;
private _leader = leader _group;
private _vehicleLeader = vehicle _leader;

// Check if group leader is in vehicle and vehicle markers are enabled
if (!(_leader isEqualTo _vehicleLeader) && {GVAR(showVehicle)}) exitWith {
    private _marker = format [QGVAR(vehicle_%1), _vehicleLeader];
    private _markerText = markerText _marker;
    _marker setMarkerTextLocal format ["%1 | %2", _markerText, _groupName];
};

// Standard marker creation
private _marker = format [QGVAR(group_%1), _group];
createMarkerLocal [_marker, getPos _leader];
_marker setMarkerTypeLocal ([_group] call FUNC(getGroupMarkerType));
_marker setMarkerSizeLocal [0.75, 0.75];
_marker setMarkerTextLocal _groupName;
GVAR(markers) pushBack [_marker, _group];

private _isPlayerGroup = _group isEqualTo group player;
// Determine marker color
switch (true) do {
    // Player's group is marked green
    case (_isPlayerGroup): {
        _marker setMarkerColorLocal "ColorGreen";
    };
    // Other groups are blue
    case (GVAR(showAllGroups)): {
        _marker setMarkerColorLocal "ColorWEST";
    };
    // Remove if no rule matched
    default {
        deleteMarkerLocal _marker;
    };
};
