/// @desc


for (var _i=0; _i<ds_list_size(panelLabel); _i++) {
	with (panelLabel[| _i]) instance_destroy();
}

for (var _i=0; _i<ds_list_size(panelButton); _i++) {

	with (panelButton[| _i]) instance_destroy();
}

for (var _i=0; _i<ds_list_size(panelImage); _i++) {

	with (panelImage[| _i]) instance_destroy();
}

for (var _i=0; _i<ds_list_size(panelCheckbox); _i++) {

	with (panelCheckbox[| _i]) instance_destroy();
}

for (var _i=0; _i<ds_list_size(panelSlider); _i++) {

	with (panelSlider[| _i]) instance_destroy();
}

ds_list_destroy(panelButton);
ds_list_destroy(panelLabel);
ds_list_destroy(panelImage);
ds_list_destroy(panelSlider);
ds_list_destroy(panelCheckbox);
surface_free(panelSurf);

