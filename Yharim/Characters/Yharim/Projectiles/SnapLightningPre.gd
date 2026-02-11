extends BaseProjectile

onready var EXPLOSION = load("res://Yharim/Characters/Yharim/Projectiles/SnapLightning.tscn")

func tick():
	.tick()
	if creator.current_state().is_hurt_state:
		disable()
