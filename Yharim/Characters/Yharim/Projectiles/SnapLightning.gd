extends ObjectState

var switch = false

onready var hitbox = $Hitbox

func _tick():
	if hitbox.overlaps(host.get_fighter().hurtbox) and not switch:
		host.creator.creator.charge += 1
		switch = true

func _frame_20():
	host.disable()

func _exit():
	switch = false
