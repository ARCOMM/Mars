/*
 * Author: esteldunedain
 * Sends a signal to an Intercept extension
 *
 * Arguments:
 * 0: extension name <STRING>
 * 1: Signal name <SRING>
 * 2: Parameters <ANY>
 *
 * Return value:
 * Success <BOOL>
 *
 * Example:
 * ["z\intercept\build\win32\example_frag\RelWithDebInfo\example_frag.dll", "enableFrag", myParameters] call intercept_fnc_signal
 *
 * Public: No
 *
 */

#include "script_component.hpp" 

params ["_extensionName", "_signalName", "_parameters"];

if !(intercept_invoker_ok) exitWith {false};

intercept_signal_var set[0, _parameters];
"intercept" callExtension format ["signal:%1,%2",_extensionName,_signalName];
