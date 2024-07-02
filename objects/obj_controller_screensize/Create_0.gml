// obj_controller: Create Event

// Base resolution
var base_width = 1920;
var base_height = 1080;

// Get the screen resolution
var screen_width = display_get_width();
var screen_height = display_get_height();

// Calculate the desired window size
var window_width = screen_width;
var window_height = screen_height / 4;

// Set the game window size
window_set_size(window_width, window_height);

// Enable the use of views
view_enabled = true;
view_visible[0] = true;

// If using GameMaker Studio 2 (GMS2), ensure viewports and cameras are set up
var cam = camera_create();
view_set_camera(0, cam);

// Set the viewport to cover the entire window
view_set_wport(0, window_width);
view_set_hport(0, window_height);

// Set the camera to cover the entire window, scaled
camera_set_view_size(cam, window_width, window_height);
camera_set_view_pos(cam, 0, 0);

// Calculate the scaling factor
var scale_x = window_width / base_width;
var scale_y = window_height / (base_height / 4);

// Set the camera properties based on the scaling factor
camera_set_view_size(cam, base_width * scale_x, (base_height / 4) * scale_y);

// Optional: Center the game window on the screen
window_center();