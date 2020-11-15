#include "script_component.hpp"
ADDON = false;

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

#include "initSettings.sqf"

// Friendly sides cache
GVAR(trackedSides) = [playerSide];

GVAR(running) = false;
GVAR(markers) = [];
GVAR(trackedVehicles) = [];

ADDON = true;
