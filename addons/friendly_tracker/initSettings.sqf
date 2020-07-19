[
    QGVAR(enabled),
    "CHECKBOX",
    [LSTRING(Enabled), LSTRING(Enabled_Description)],
    LSTRING(DisplayName),
    true,
    true,
    {
        if (_this) exitWith {
            [] call FUNC(init);
        };
    }
] call CBA_fnc_addSetting;

[
    QGVAR(showInvisible),
    "CHECKBOX",
    [LSTRING(ShowInvisible), LSTRING(ShowInvisible_Description)],
    LSTRING(DisplayName),
    false,
    true
] call CBA_fnc_addSetting;

[
    QGVAR(showAllGroups),
    "CHECKBOX",
    [LSTRING(ShowAllGroups), LSTRING(ShowAllGroups_Description)],
    LSTRING(DisplayName),
    true,
    true
] call CBA_fnc_addSetting;

[
    QGVAR(showGroups),
    "LIST",
    [LSTRING(showGroups), LSTRING(showGroups_Description)],
    LSTRING(DisplayName),
    [[0, 1, 2], [LSTRING(showGroups_Disabled), LSTRING(showGroups_Player), LSTRING(showGroups_All)], 0],
    false
] call CBA_fnc_addSetting;

[
    QGVAR(showSides),
    "LIST",
    [LSTRING(showSides), LSTRING(showSides_Description)],
    LSTRING(DisplayName),
    [[SIDES_FRIENDLY, SIDES_PLAYER, SIDES_ALL], [LSTRING(showSides_Friendly), LSTRING(showSides_Player), LSTRING(showSides_All)], SIDES_FRIENDLY],
    false
] call CBA_fnc_addSetting;

[
    QGVAR(showUnconc),
    "CHECKBOX",
    [LSTRING(ShowUnconc), LSTRING(ShowUnconc_Description)],
    LSTRING(DisplayName),
    false,
    true
] call CBA_fnc_addSetting;

[
    QGVAR(showVehicle),
    "CHECKBOX",
    [LSTRING(showVehicle), LSTRING(showVehicle_Description)],
    LSTRING(DisplayName),
    false,
    true
] call CBA_fnc_addSetting;

[
    QGVAR(refreshRate),
    "SLIDER",
    [LSTRING(RefreshRate), LSTRING(RefreshRate_Description)],
    LSTRING(DisplayName),
    [1, 600, 5, 0],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(GPS),
    "CHECKBOX",
    [LSTRING(GPS), LSTRING(GPS_Description)],
    LSTRING(DisplayName),
    false,
    true
] call CBA_fnc_addSetting;
