/// @description Insert description here
// You can write your code in this editor

// Utilize the tl_spike timeline to coordinate actions
timeline_index = tl_results;

// Set the timeline speed units to equal 1 second (1 / 60 fps)
timeline_speed = 1 / room_speed;

// Start timeline at position 0;
timeline_position = 0;

// This sets the timeline to run on the object
timeline_running = true;

// The timeline will loop on the object once all its steps are completed
timeline_loop = false;