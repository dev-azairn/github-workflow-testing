extends RefCounted
class_name TestPlayer

func test_take_damage():
	var player = load("res://scripts/Player.gd").new()
	player.take_damage(30)
	assert(player.health == 70)

func test_health_never_negative():
	var player = load("res://scripts/Player.gd").new()
	player.take_damage(200)
	assert(player.health == 0)
