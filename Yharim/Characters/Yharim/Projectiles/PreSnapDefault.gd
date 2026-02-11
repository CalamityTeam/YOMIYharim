extends DefaultFireball

var switch = false
var hit = false

func _tick():
	._tick()
	if host.creator.snap == 0 and not host.disabled and not switch:
		var obj1 = host.spawn_object(host.EXPLOSION, 0, 0, true, data)
		obj1.set_facing(host.get_facing_int())
		switch = true
		host.disable()
func _exit():
	hit = false
