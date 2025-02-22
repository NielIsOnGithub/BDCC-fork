extends ItemBase

func _init():
	id = "painkillers"

func getVisibleName():
	return "Painkillers"
	
func getDescription():
	return "Helps against pain, removes 80 pain"

func getA():
	return ""

func canUseInCombat():
	return true

func useInCombat(_attacker, _receiver):
	_attacker.addPain(-80)
	removeXOrDestroy(1)
	return _attacker.getName() + " took painkillers"

func getPossibleActions():
	return [
		{
			"name": "Consume",
			"scene": "UseItemLikeInCombatScene",
			"description": "Take the painkillers",
		},
	]

func getPrice():
	return 3

func canSell():
	return true

func canCombine():
	return true

func addsIntoxication():
	return 0.2

func getTimedBuffs():
	return [
		#buff(Buff.ExposureBuff, [100])
	]

func getBuffsDurationSeconds():
	return 60*60*2

func getTimedBuffsTurns():
	return [
		#buff(Buff.MaxLustBuff, [-20]),
		buff(Buff.MaxPainBuff, [20]),
	]

func getBuffsDurationTurns():
	return 5

func getTags():
	return [
		ItemTag.SoldByMedicalVendomat,
		]

func useInSex(_receiver):
	_receiver.addPain(-80)
	return {
		text = "{USER.You} {USER.youVerb('feel')} better.".replace("USER", _receiver.getID()),
	}

func getItemCategory():
	return ItemCategory.Medical
