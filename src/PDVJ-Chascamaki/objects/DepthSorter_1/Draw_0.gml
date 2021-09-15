/// @description Insert description here

// Resize grid
var grid = dsDepthGrid;
var instNumber = instance_number(parDepthObject);

ds_grid_resize(grid, 2, instNumber);

// Add instance info to grid
var aux = 0;
with (parDepthObject) {
	grid[# 0, aux] = id;
	grid[# 1, aux] = y;
	aux++;
}

// Sort grid in ascending order
ds_grid_sort(grid, 1, true);

// Loop through the grid and draw all the instances
var aux = 0;
repeat (instNumber) {
	// Get the ID
	var inst = grid[# 0, aux];
	// Get instance to draw itself
	with (inst) {
		draw_self();
	}
	aux++;
}