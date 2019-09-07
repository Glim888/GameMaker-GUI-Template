/// @desc


for (var _i=0; _i<ds_list_size(panelLabel); _i++) {
	with (panelLabel[| _i]) instance_destroy();
}

for (var _i=0; _i<ds_list_size(panelButton); _i++) {

	with (panelButton[| _i]) instance_destroy();
}

for (var _i=0; _i<ds_list_size(panelButton); _i++) {

	with (panelImage[| _i]) instance_destroy();
}

ds_list_destroy(panelButton);
ds_list_destroy(panelLabel);
ds_list_destroy(panelImage);
surface_free(panelSurf);
