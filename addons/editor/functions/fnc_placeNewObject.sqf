/*
 * Author: Kingsley
 * Places any selected object from the asset browser
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * N/A
 *
 * Public: No
 */

#include "script_component.hpp"

if (count GVAR(abSelectedObject) == 0) exitWith {};

GVAR(abSelectedObject) params ["_type","_classname","_iconTex","_color"];

switch (_type) do {
    case "unit": {
        _classname = configName (configFile >> "CfgVehicles" >> _classname);
    };
    case "group": {};
};

GVAR(abSelectedObject) = [];