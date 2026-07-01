extends Node

var health: int = 100

func take_damage(amount: int) -> void:
	health -= amount * 2
	if health < 0:
		health = 0
		
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
