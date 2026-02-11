extends PlayerExtra

onready var reduce = $Reduce

func _ready():
	reduce.connect("toggled", self, "_on_reduce_toggled")


func _on_reduce_toggled(_on):
	emit_signal("data_changed")


func get_extra():
	return{
		"Reduce" : reduce.pressed and reduce. visible
	}


func show_options():
	var no_use_states = ["ParryAuto", "ParryHigh", "ParrySuper"]
	reduce.visible = fighter.snap > 0 and fighter.charge >= 1 and not (is_instance_valid(fighter.previous_state()) and fighter.previous_state().name in no_use_states) and not (is_instance_valid(fighter.current_state()) and fighter.current_state().name in no_use_states) 


func reset():
	reduce.set_pressed_no_signal(false)

func get_data():
		var children = get_children()
		if children.size() == 1:
			return children[0].get_data()
		elif children.size() == 0:
			return null
		else :
			var data = {}
			for child in children:
				if child.name != "CPUParticles2D":
					data[child.name] = child.get_data()
			return data
