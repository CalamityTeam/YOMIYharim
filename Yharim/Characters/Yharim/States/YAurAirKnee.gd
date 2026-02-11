extends CharacterState

onready var Sweetspot = $Hitbox

func is_usable():
	return .is_usable() and host.charge >= 1

func _tick():
	._tick()
	pass

func _on_hit_something(obj, hitbox):
	._on_hit_something(obj, hitbox)
	
func _frame_1():
		host.AchFail = true
		host.charge -= 1
		

