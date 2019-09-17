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

### Preparation:
- Download [Package](https://github.com/Glim888/GameMaker-GUI-Template/blob/master/res/GUI Template.yymp)
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


