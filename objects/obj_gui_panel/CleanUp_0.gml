/// @desc


for (var _i=0; _i<ds_list_size(panelComponents); _i++) {
	instance_activate_object(panelComponents[| _i]);
	with (panelComponents[| _i]) instance_destroy();
}

ds_list_destroy(panelComponents);
surface_free(panelSurf);

