draw_set_alpha(0.3)
draw_rectangle(15,15,200, 90, false)

draw_set_alpha(1)
var currentTimerSeconds = floor((current_time - startTime)/1000)
var currentTimerMinutes = floor(currentTimerSeconds/60)

var secondString = $"{(currentTimerSeconds%60)}"
if string_length(secondString) = 1 {
	secondString = "0" + secondString
}

var minuteString = $"{(currentTimerMinutes)}"
if string_length(minuteString) = 1 {
	minuteString = "0" + minuteString
}

draw_text_transformed_color(15, 15,
	$"{minuteString}:{secondString}",
	4, 4, 0, c_black, c_black, c_black, c_black, 1)