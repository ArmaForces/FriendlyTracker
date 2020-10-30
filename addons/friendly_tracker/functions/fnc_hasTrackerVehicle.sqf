#include "script_component.hpp"
/*
 * Author: veteran29
 * Function checks if vehicle has tracking capabilities
 *
 * Arguments:
 * 0: The vehicle that will be checked if it has a tracking capabilities <OBJECT>
 *
 * Return Value:
 * 0: Has tracker <BOOL>
 *
 * Example:
 * [bob] call afft_friendly_tracker_fnc_hasTrackerVehicle
 *
 * Public: No
 */

params ["_vehicle"];

if (!GVAR(GPSVehicle)) exitWith {false};

getNumber (configOf _vehicle >> "enableGPS") == 1 // return
