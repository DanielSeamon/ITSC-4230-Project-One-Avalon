/// @description When player destroys this object, spawn a clean object
// You can write your code in this editor

// When a dirty object is destoryed, spawn a clean object in its place
instance_create_layer(x, y, "Instances", clean_object);