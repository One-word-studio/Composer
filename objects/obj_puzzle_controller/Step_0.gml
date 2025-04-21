if (!global.puzzle_complete && current_time - global.last_interaction_time > 30000) {
    global.player_sequence = "";
    show_debug_message("Puzzle reset due to 30 seconds of inactivity.");
}
