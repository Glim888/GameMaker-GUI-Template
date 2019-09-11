/// @desc

// you can use these vars
gui_myPanel = noone; // reference to panel, that element is assigned to (READONLY)
gui_active = true; // set gui element active or inactive
gui_depth = 0; // smaller values means nearer to screen
gui_activePos = [x, y]; // if gui element is active it will maintain this position
gui_inactivePos = [0, 0]; // if gui element is inactive it will maintain this position
gui_slideSpeed = 0.05; // defines how fast the gui element moves


// do not use
destPos = [0 , 0];
isCreatedByScript = false;
stopSliding = false;
alarm[0] = 1;
image_speed = 0;
