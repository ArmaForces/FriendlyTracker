#define COMPONENT friendly_tracker
#include "\z\afft\addons\main\script_mod.hpp"

// #define DEBUG_MODE_FULL
// #define DISABLE_COMPILE_CACHE
// #define DEBUG_MODE_SHOW_AI

#ifdef DEBUG_ENABLED_FRIENDLY_TRACKER
    #define DEBUG_MODE_FULL
#endif
    #ifdef DEBUG_SETTINGS_FRIENDLY_TRACKER
    #define DEBUG_SETTINGS DEBUG_SETTINGS_FRIENDLY_TRACKER
#endif

#include "\z\afft\addons\main\script_macros.hpp"

#ifdef DEBUG_MODE_SHOW_AI
    #define TRACKABLE_UNITS  (allUnits select {side _x in GVAR(friendlySides)})
    #define TRACKABLE_GROUPS (allGroups select {side _x in GVAR(friendlySides) && {[_x] call FUNC(isTrackable)}})
#else
    #define TRACKABLE_UNITS  (allPlayers select {side _x in GVAR(friendlySides)})
    #define TRACKABLE_GROUPS (allGroups select {isPlayer leader _x && {side _x in GVAR(friendlySides) && {[_x] call FUNC(isTrackable)}}})
#endif

#define SIDES_FRIENDLY 0
#define SIDES_PLAYER 1
#define SIDES_ALL 2
