var prevX = x;
var prevY = y;

// Movement code (unchanged)
if keyboard_check(vk_up) {
    check_and_move(self, 0, -move_speed);
}

if keyboard_check(vk_down) {
    check_and_move(self, 0, move_speed);
}

if keyboard_check(vk_left) {
    check_and_move(self, -move_speed, 0);
}

if keyboard_check(vk_right) {
    check_and_move(self, move_speed, 0);
}

// Inventory slot selection (unchanged)
var number_key = string_digits(keyboard_lastchar);
if string_length(number_key) {
    if number_key > 0 && number_key < 3 {
        selected_slot = number_key;
    }
}

// Animation handling (unchanged)
if (prevX > x) {
    sprite_index = spr_playerSide;    
    image_xscale = -1;
} else if (prevX < x) {
    sprite_index = spr_playerSide;
    image_xscale = 1;
} else if (sprite_index == spr_playerSide) {
    sprite_index = spr_playerSideIdle;
}

if (prevY > y) {
    sprite_index = spr_playerUp;
} else if (prevY < y) {
    sprite_index = spr_playerDown;    
} else if (sprite_index == spr_playerUp) {
    sprite_index = spr_playerUpIdle;
} else if (sprite_index == spr_playerDown) {
    sprite_index = spr_playerDownIdle;
}

// INTERACTION SYSTEM - Enhanced with puzzle functionality
var interactive_close = instance_nearest(x, y, obj_interactiveBase);
if (interactive_close && distance_to_object(interactive_close) < interact_range) {
    interactive_close.in_range = true;
    
    // Only trigger on key press (not hold)
    if (keyboard_check_pressed(ord("E"))) {
        interactive_close.interacted = true;
        
        // Handle crystal interactions
        if (interactive_close.object_index >= obj_crystal_A && 
            interactive_close.object_index <= obj_crystal_D) {
            
            // Play the crystal's sound
            var note = interactive_close.note; // Assuming each crystal has a 'note' variable (A, B, C, D)
            audio_play_sound(interactive_close.sound_note, 0, false);
            
            // Find the puzzle controller
            var controller = instance_find(obj_puzzle_controller, 0);
            if (controller && !controller.puzzle_solved) {
                // Add to player sequence
                controller.player_sequence += note;
                
                // Check if sequence is still correct
                if (string_pos(controller.player_sequence, controller.correct_sequence) != 1) {
                    // Wrong sequence - reset
                    controller.player_sequence = "";
                    audio_play_sound(snd_error, 0, false);
                    show_debug_message("Wrong sequence! Start over.");
                }
                else if (controller.player_sequence == controller.correct_sequence) {
                    // Puzzle solved!
                    controller.puzzle_solved = true;
                    instance_create_layer(x, y, "Instances", obj_chest);
                    audio_play_sound(snd_success, 0, false);
                    show_debug_message("Puzzle solved! Chest appears.");
                }
            }
        }
        // Handle tune player interaction
        else if (interactive_close.object_index == obj_tune_player) {
            // Play the full correct tune
            var controller = instance_find(obj_puzzle_controller, 0);
            if (controller) {
                // Simple implementation - plays all notes at once
                // For better implementation, use a sequence system with delays
                var seq = controller.correct_sequence;
                for (var i = 0; i < string_length(seq); i++) {
                    var note = string_char_at(seq, i+1);
                    audio_play_sound(interactive_close.sound_note, 0, false);
                    // Note: This will play all sounds at once - consider using alarms for sequencing
                }
                show_debug_message("Playing correct tune: " + seq);
            }
        }
    }
} else if (interactive_close) {
    interactive_close.in_range = false;
}

// Audio listener (unchanged)
audio_listener_position(x, y, 0);