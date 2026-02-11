extends DefaultFireball

var BHits = 0
var hits = 0
var ticky = 0

func _tick():
	._tick()
	ticky += 1
	if ticky >= 125:
		var obj1 = host.spawn_object(host.EXPLOSION, 0, 0, true, data)
		obj1.set_facing(host.get_facing_int())
		hits = 0
		BHits = 0

func on_got_blocked():
	.on_got_blocked()
	BHits += 1
	if BHits == 8:
		host.disable()
		var obj1 = host.spawn_object(host.EXPLOSION, 0, 0, true, data)
		obj1.set_facing(host.get_facing_int())

func _on_hit_something(obj, hitbox):
	._on_hit_something(obj, hitbox)
	if obj and obj.is_in_group("Fighter") and obj == host.creator.opponent:
		hits += 1
	if hits == 2:
		
		var obj1 = host.spawn_object(host.EXPLOSION, 0, 0, true, data)
		obj1.set_facing(host.get_facing_int())
		hits = 0
		if host.creator.current_state().state_name == "HurtAerial":
				return
		if host.creator.current_state().state_name == "HurtGrounded":
				return
		else:
				host.creator.current_state().enable_hit_cancel()
