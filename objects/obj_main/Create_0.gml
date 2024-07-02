// obj_main: Create Event

// Create player object (ensure obj_player exists)
instance_create_layer(x, y, "Instances", obj_player);

// Create gold counter object (ensure obj_gold_counter exists)
instance_create_layer(10, 10, "UI", obj_gold_counter);

// Create background (ensure spr_town exists and is assigned correctly)
instance_create_layer(0, 0, "Background", obj_spr_town);

// Create shop object (adjust coordinates as necessary)
var shop_x = 200;
var shop_y = 300;
instance_create_layer(shop_x, shop_y, "InteractiveObjects", obj_shop);
