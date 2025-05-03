// Draw background box
draw_set_alpha(0.3);
draw_rectangle(15, 15, 200, 90, false);
draw_set_alpha(1);

// Calculate timer values
var elapsed_seconds = floor((current_time - startTime) / 1000);
var minutes = elapsed_seconds div 60;
var seconds = elapsed_seconds mod 60;

// Format minutes and seconds with leading zeros
var minuteString = (minutes < 10) ? "0" + string(minutes) : string(minutes);
var secondString = (seconds < 10) ? "0" + string(seconds) : string(seconds);
timeText = minuteString + ":" + secondString;

// Save current settings
var prev_font = draw_get_font();
var prev_filter = gpu_get_texfilter();

// Draw only the timer with sharp font
gpu_set_texfilter(false);
draw_set_font(fnt_timer); // Use your clean timer font
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(108, 55, timeText);

// Restore previous settings
draw_set_font(prev_font);
gpu_set_texfilter(prev_filter);
