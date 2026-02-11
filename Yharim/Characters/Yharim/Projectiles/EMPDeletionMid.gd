extends BaseProjectile 

var cowguy = false

func trigger_consume(obj):
	if obj is BaseProjectile and !cowguy: 
			var can_state_fizzle = false
			if obj.get("state_machine"):
				if obj.state_machine.get("state"):
					if obj.state_machine.state.has_method("fizzle"):
						can_state_fizzle = true
			
			if can_state_fizzle:
				creator.current_state().enable_hit_cancel()
				obj.state_machine.state.fizzle()
			elif obj.has_method("fizzle"):
				obj.fizzle()
			else:
				obj.disable()
				do_interrupt()
				get_fighter().current_state().enable_interrupt()

func do_interrupt():
	if !cowguy:
		get_fighter().current_state().enable_interrupt()
