# Free GUI Template for GameMaker Studio 2

## Download the GMS2 Package for free!

[Download link](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/GUI_TEMPLATE.yymp)

## Designer!

You can **easily design your own panels via Room Editor!** 
![Designer](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/Designer.PNG)

## Demo

Here you can see how a simple gui would look like. There are different gui depths and a collision system, so you can´t click on buttons under the highest gui element!

![Demo](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/Demo1.PNG)

## Minimalist tutorial

# Preparation:
Download [Package](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/GUI_TEMPLATE.yymp)
![Import Package](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/tut/tut1.png)

# Setup Template:

- add gui_init to your room init object
```gui_init(room_width, room_height, true);```


- open gui_constants script and and change GUI_LAYER to your gui layer, or a layer you do use in your game.
```#macro GUI_LAYER "XXX"```



- Create a new object, which inherits from "obj_gui_panel". Set the sprite to "spr_gui_panel", so you will be able to stretch the sprite later in room editor.
![tut2](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/tut/tut2.png)

- open obj_gui_panel create event. There you will find following variables. You can change them!
```
// you can use these vars FROM obj_gui_panel

panel_title = "Panel"; // set the title of the panel
panel_color = 0; // change the body color
panel_colorBorderLeft = 0; // change the border color1
panel_colorBorderRight = 0; // change the border color2
panel_size = [sprite_width, sprite_height]; // the size of the panel
panel_useDefault = true; // use the default look of the panel, you can change the look to any sprite you want (just disable that var and set a other sprite)
panel_isMoveable = true; // panel can be dragged and dropped
panel_useExitButton = true; // only for default panel

// you can use these vars FROM obj_gui

gui_myPanel = noone; // reference to panel, that element is assigned to (READONLY)
gui_active = true; // set gui element active or inactive
gui_depth = 0; // smaller values means nearer to screen
gui_activePos = [x, y]; // if gui element is active it will maintain this position
gui_inactivePos = [0, 0]; // if gui element is inactive it will maintain this position
gui_slideSpeed = 0.05; // defines how fast the gui element moves
```

- copy the variables you want to change, I will change following variables:
```
panel_title = "Panel Tutorial";
panel_color = make_color_rgb(73, 73, 123);
panel_colorBorderLeft = make_color_rgb(51, 56, 74);
panel_colorBorderRight = make_color_rgb(51, 56, 154);
gui_inactivePos = [-sprite_width, y];
```
- add the panel object to the room and stretch it like you want
- you will see following result
![tut2](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/tut/tut3.png)

- not lets add a button which opens the panel
- Create a new object, which inherits from "obj_gui_button". Set the sprite to "spr_gui_button", so you will be able to stretch the sprite later in room editor.

- set following variables at create event 
```
button_title = "Open";
button_titleFont = YOUR FONT or PANEL_TITLE_FONT;
button_titleColor = c_white;
```

- add the button to room
- you should see following result:
![tut2](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/tut/tut4.png)

- At the moment the button has no function. To assign the button some functionality we will add an event handler (a script which gets called, when the button is clicked or released). We can do this by adding "gui_addEventHandler" to the create event of you new button

```
/// @desc button1 create event

// Inherit the parent event
event_inherited();

// you can use these vars
// sprite_index
button_title = "Open";
button_titleFont = font_32;
button_titleColor = c_black;

gui_addEventHandler(self, eventType_button.onRelease, button1_onRelease);
```

- now we need to create a script called "button1_onRelease". It gets called when we release the button. Create it and add following code to it.
```
obj_gui_pnl_1.gui_active = true;
```

- add ```gui_active = false``` to the creat event of your panel. So the panel will be deactivated at startup.


