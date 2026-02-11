extends BaseProjectile
#hi
onready var hitbox = $StateMachine/Default/Hitbox

onready var EXPLOSION = load("res://Yharim/Characters/Yharim/Projectiles/RedAuricExplosion.tscn")

var ticky = 0

func tick():
	.tick()
	if creator.combo_proration >= 1:
		hitbox.damage / creator.combo_proration
	ticky += 1
	if ticky >= 210:
		disable()

func disable():
	creator.shoot -= 1
	.disable()

