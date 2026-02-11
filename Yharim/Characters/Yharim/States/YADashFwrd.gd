extends CharacterState

func _enter():
	if data:
		if data.y == -1:
				host.change_state("YADashUp")
		if data.y == 1:
				host.change_state("YADashDwn")
		if data.x == 0 and data.y == 1:
				host.change_state("YADashFall")

func _frame_1():
		host._create_speed_after_image("ffffff", 0.2)
