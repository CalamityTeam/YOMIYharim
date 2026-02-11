extends ThrowState

func _enter():
	host.opponent.grab_camera_focus()
	host.set_camera_zoom(0.6)
	host.play_sound("AhShit")
func _frame_1():
	host.charge += 1
func _frame_42():
	host.opponent.release_camera_focus()
	host.set_camera_zoom(0.6)
	host.tween_camera_zoom(0.6, 1.0, 0.2, Tween.TRANS_LINEAR, Tween.EASE_IN)

