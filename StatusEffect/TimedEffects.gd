extends StatusEffectBase

func _init():
	id = StatusEffect.TimedEffects
	isBattleOnly = false
	
func initArgs(_args = []):
	pass
	
func processBattleTurn():
	pass
	
func processTime(_minutesPassed: int):
	pass

func getEffectName():
	return "Timed effects"

func getEffectDesc():
	var time = character.timedBuffsDurationSeconds

	return "For the next "+Util.getTimeStringHumanReadable(time)+":"

func getEffectImage():
	return "res://Images/StatusEffects/overdose.png"

func getIconColor():
	return IconColorBlue

func combine(_args = []):
	pass

func getBuffs():
	return character.timedBuffs
