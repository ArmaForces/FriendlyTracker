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

private _enabledGps = _vehicle getVariable [QGVAR(enabledGps), ""];

if (_enabledGps isEqualType true) exitWith {_enabledGps};

private _vehicleConfig = configOf _vehicle;
private _vehicleConfigName = configName _vehicleConfig;

_enabledGps = [GVAR(vehicleGpsCache), _vehicleConfigName, ""] call CBA_fnc_hashGet;

if (_enabledGps isEqualTo "") then {
    _enabledGps = getNumber (_vehicleConfig >> "enableGPS") == 1;
    [GVAR(vehicleGpsCache), _vehicleConfigName, _enabledGps] call CBA_fnc_hashSet;
};

// Return
_enabledGps
