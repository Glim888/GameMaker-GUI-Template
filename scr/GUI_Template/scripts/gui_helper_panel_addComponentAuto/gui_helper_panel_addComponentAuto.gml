/// @func gui_panel_addComponentAuto

with (obj_gui_panel) {		
	with (obj_gui) {
	
		if (object_index != obj_gui_panel && !object_is_ancestor(object_index, obj_gui_panel)) {
			if (point_in_rectangle(x, y, other.x, other.y, other.x+other.panel_size[0], other.y+other.panel_size[1])) {
				gui_panel_addComponent(other, [x - other.x, y-other.y], self);
				
			}
		}
	}
}

global.useDesigner = false;