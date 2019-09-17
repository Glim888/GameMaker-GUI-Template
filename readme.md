# Free GUI Template for GameMaker Studio 2

## Download the GMS2 Package for free!

[Download link](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/GUI_TEMPLATE.yymp)

## Designer!

You can **easily design your own panels via Room Editor!** 
![Designer](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/Designer.PNG)

## Demo

Here you can see how a simple gui would look like. There are different gui depths and a collision system, so you can´t click on buttons under the highest gui element!

![Demo](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/Demo1.PNG)
![Demo](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/Demo2.PNG)
![Demo](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/Demo3.PNG)
## Minimalist tutorial

### Preparation:
- Download [Package](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/GUI_Template.yymp)
![Import Package](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/tut/tut1.png)
---
### Setup Template:

1. Add **gui_init** to your **room init object**.
```gui_init(room_width, room_height, true);```


2. Open **gui_constants script** and and change **GUI_LAYER** macro to your gui layer, or a layer you do use in your game.
```#macro GUI_LAYER "XXX"```
---
### Create Panel (window)

3. Create a new object **obj_panel_1**, which **inherits** from **obj_gui_panel**. Set the sprite to **spr_gui_panel**, so you will be able to stretch the sprite later in room editor.

![tut1](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/tut/tut1.PNG)

4. Copy the following code to the **create event** of **obj_panel_1**.
```
panel_title = "Panel Tutorial";
panel_color = make_color_rgb(73, 73, 123);
panel_colorBorderLeft = make_color_rgb(51, 56, 74);
panel_colorBorderRight = make_color_rgb(51, 56, 154);
```
5. Add the panel object to the room and stretch it like you want.
6. You will see following result.
![tut2](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/tut/tut2.PNG)
---
### Add a button, which opens the panel
7. Create a new object **obj_button_1**, which inherits from **obj_gui_button**. Set the sprite to **spr_gui_button**, so you will be able to stretch the sprite later in room editor.

8. Copy the following code to the **create event** of **obj_button_1**
```
button_title = "Open";
button_titleFont = YOUR FONT or PANEL_TITLE_FONT;
button_titleColor = c_black;
```

9. Add the button to room.

### Add functionality to the button
11. At the moment the button has no function. To assign the button some functionality we will add an event handler (a script which gets called, when the button is clicked or released). We can do this by adding **gui_addEventHandler** to the **create event** of **obj_button_1**. Add following code to the create event of obj_button_1.

```
gui_addEventHandler(self, eventType_button.onRelease, button1_onRelease);
```

12. Now we need to create a script called **button1_onRelease**. It gets called when we release the button. Create it and add following code to it.
```
obj_panel_1.gui_active = true;
```

13. The last thing we have to do is adding following code to the **create event** of **obj_panel_1**. This code will disable the panel at startup and set its inactive position outside of the room.
```
gui_active = false
gui_inactivePos = [-sprite_width, y];
```
![tut3](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/tut/tut3.PNG)


## GUI Elements


### INFO:
All gui elements provide **variables you can change**. You will **find them in the create event** of the specific parent element (e.g. obj_gui) you want to use. Here an example:
```
// YOU CAN USE THESE VARIABLES
gui_myPanel = noone; // reference to panel, that element is assigned to (READONLY)
gui_active = true; // set gui element active or inactive
gui_depth = 0; // smaller values means nearer to screen
gui_activePos = [x, y]; // if gui element is active it will maintain this position
gui_inactivePos = [0, 0]; // if gui element is inactive it will maintain this position
gui_slideSpeed = 0.05; // defines how fast the gui element moves/ slides


// DO NOT USE!
destPos = [0 , 0];
isCreatedByScript = false;
stopSliding = false;
alarm[0] = 1;
image_speed = 0;
```
> only use the variables at the YOU CAN USE THESE VARIABLES section
---
### obj_gui:
Every gui elements inherits from **obj_gui**. It provides some **usefull variables**, that you can **change**.
>You should not instantiate obj_gui directly (its abstract). Always use one of its childs! (button, panel...)

**Variables you can change:**

- This variable is a reference to the assigned panel OR noone if it is not assigned to a panel. 
```
gui_myPanel = noone; 
```
- Set gui element active or inactive
```
gui_active = true;
```
- Smaller value means the gui element is nearer to screen.
``` 
gui_depth = 0;
```
- Active and inactive position of the element. 
```
gui_activePos = [x, y]; // if gui element is active it will maintain this position
gui_inactivePos = [0, 0]; // if gui element is inactive it will maintain this position
```
- Defines how fast the gui element slides
```
gui_slideSpeed = 0.05;
```

**Event User (0)**
Every gui element can use this **event_user(0)** event to **draw additional stuff**, like text over a image. This event gets called short after the gui element is drawn. **Override this event in the children** object to draw something.

---
### obj_gui_panel:

Used to group collections of gui elements.

**Variables you can change:**
>obj_gui variables can also be used!

Use the default panel (assigned sprite will be ignored -> the panel uses a predefined look)
```
panel_useDefault = true;
```

- Change the name of the panel
```
panel_title = "Panel";
```
> only available for default panel (panel_useDefault = true;)

Set the panel position as fixed or not
```
panel_isMoveable = true;
```
- width and height of the panel (**if you use the designer, add [sprite_width, sprite_height];**)
```
panel_size = [sprite_width, sprite_height];
```
- set the colors for the default panel
```
panel_color = 0;
panel_colorBorderLeft = 0;
panel_colorBorderRight = 0;
```
> only available for default panel (panel_useDefault = true;)


Use a "close the panel/window" button. 
```
panel_useExitButton = true;
```
> only available for default panel (panel_useDefault = true;)


### obj_gui_button:

**Variables you can change:**
>obj_gui variables can also be used!

- Set the sprite of the button
```
sprite_index = spr_gui_button;
```

- Title, that gets drawn over the button sprite
```
button_title = "Open";
```

- Font of the title
```
button_titleFont = font_32;
```
- Color of the title
```
button_titleColor = c_black;
```
**Usefull functions:**

*gui_addEventHandler(gui_element, eventType, eventHandler)*
- Add an event handler to a button. A event handler is a script, which gets called, when the button is clicked!

```
gui_addEventHandler(self, eventType_button.onRelease, button1_onRelease);
```
---

### obj_gui_label:

Simple Text

**Variables you can change:**

- text you want to draw
```
label_text = "";
```

- font of the text
```
label_font = noone;
```
- color of the text
```
label_color = c_white;
```


### obj_gui_textfield:

**Variables you can change:**

```
textfield_text = 0;
```

```
textfield_title = 0;
```

```
textfield_titleFont = 0;
```

```
textfield_titleColor = 0;
```

---
### obj_gui_slider:

**Variables you can change:**

```
slider_minVal = 0;
```

```
slider_maxVal = 0;
```

```
slider_value = 0;
```

```
slider_title = 0;
```

```
slider_titleFont = 0;
```

```
slider_titleColor = 0;
```
---
### obj_gui_checkbox:

**Variables you can change:**

```
cb_title = "";
```

```
cb_titleFont = 0;
```

```
cb_titleColor = 0;
```

```
cb_state = 0;
```
---

### obj_gui_image:

**Variables you can change:**
```
sprite_index = spr_picture;
```

## Scripts:

```
gui_init(gui_width, gui_height, useDesigner);
```

```
gui_panel_addComponent (panel, [positionAtPanelXY], component)
```

```
gui_addEventHandler (guiElement, event_type, eventHander)
```

```
gui_showMessage (title, text, font, colorText, timerInSteps)
```

```
gui_showMessage_ext ([posXY], [startPosXY], title, text, font, colorText, useExitButton, timerInSteps)
```

```
gui_useShader (preShaderScript, postShaderScript, useShader)
```


```
gui_panel_create
```

```
gui_image_create
```

```
gui_button_create
```

```
gui_label_create
```

```
gui_slider_create
```

```
gui_checkBox_create
```

```
gui_textField_create
```




