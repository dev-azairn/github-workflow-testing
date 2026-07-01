extends GutTest

func test_take_damage_reduces_health():
	var player = load("res://Scripts/Player.gd").new()
	player.take_damage(30)
	assert_eq(player.health, 70, "Health should be reduced by 30")

func test_health_does_not_go_negative():
	var player = load("res://Scripts/Player.gd").new()
	player.take_damage(200)
	assert_eq(player.health, 0, "Health should not go below 0")
