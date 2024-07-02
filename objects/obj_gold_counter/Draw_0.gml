// obj_gold_counter: Draw Event

// Draw the placeholder sprite
draw_self();

// Draw the gold amount next to the placeholder image
draw_text(x + sprite_width + 10, y, "Gold: " + string(global.gold));