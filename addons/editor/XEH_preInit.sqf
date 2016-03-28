#include "script_component.hpp"

ADDON = false;

#include "XEH_PREP.hpp"

// Reset the stored display
SETUVAR(GVAR(interface),displayNull);

// Permanent variables
GVAR(availableModes) = [0];
GVAR(availableVisions) = [-2,-1,0,1];
GVAR(camAgent) = objNull;
GVAR(camDistance) = 10;
GVAR(camMode) = 0;
GVAR(camPan) = 0;
GVAR(camPos) = ATLtoASL [worldSize * 0.5, worldSize * 0.5, 20];
GVAR(camSpeed) = 1.5;
GVAR(camTilt) = -10;
GVAR(camUnit) = objNull;
GVAR(camVision) = -2;
GVAR(camZoom) = 1;
GVAR(interrupts) = [];
GVAR(isSet) = false;
GVAR(menus) = [];
GVAR(topNavControls) = [];

GVAR(canContext) = true;

GVAR(objectTagger) = 0;
GVAR(objectIcons) = 0;

GVAR(cachedGroups) = [];
GVAR(cachedUnits) = [];

GVAR(selectionPFH) = 0;
GVAR(selection) = [];

GVAR(shiftKey) = false;

ADDON = true;