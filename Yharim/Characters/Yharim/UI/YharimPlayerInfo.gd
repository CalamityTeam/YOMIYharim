extends PlayerInfo




func set_fighter(fighter):
	.set_fighter(fighter)
	if player_id == 2:
		$"%HBoxContainer".alignment = BoxContainer.ALIGN_BEGIN
		$"%Charge".alignment = BoxContainer.ALIGN_BEGIN
		$"%Overcharge".alignment = BoxContainer.ALIGN_BEGIN
		$"%HBoxContainer2".alignment = BoxContainer.ALIGN_END

func _process(delta):
		if fighter.charge >= 1:
			$"HBoxContainer2/AuricUICharge".visible = true
		if fighter.charge > 3:
			$"HBoxContainer2/AuricUICharge2".visible = true
		if fighter.charge <= 0:
			$"HBoxContainer2/AuricUICharge".visible = false
		if fighter.charge <= 3:
			$"HBoxContainer2/AuricUICharge2".visible = false
		for i in range(5):
			var Charge = get_node("%" + str(i + 1))
			Charge.visible = i < fighter.charge
		if fighter.OppTF == false:
			$"Oppresion".visible = true
			$"OppCounter".visible = false
		else:
			$"Oppresion".visible = false
			$"OppCounter".visible = true
		$"%Overcharge".visible = fighter.Overcharge
		$"HBoxContainer2/Red".visible = fighter.OCT
		$"HBoxContainer2/BarEffect2".visible = fighter.OCT
		if !fighter.Overcharge:
			$"OverCounter".visible = false
		else:
			$"OverCounter".visible = true
		$"OverCounter".text = str(fighter.CT)
		$"OppCounter".text = str(fighter.Oppre)
		if fighter.CT <= 150:
			$"%Overcharge".modulate.a = 1.0 if Utils.pulse(0.2, 0.75) else 0.6
			$"OverCounter".modulate.a = 1.0 if Utils.pulse(0.2, 0.75) else 0.6


