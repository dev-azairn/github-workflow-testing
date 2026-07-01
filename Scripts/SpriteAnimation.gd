extends CharacterBody2D;

@onready var _animated_sprite = $AnimatedSprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_animated_sprite.play("run")
	if Input.is_action_pressed("ui_right"):
		_animated_sprite.scale.x = -1
	if Input.is_action_pressed("ui_left"):
		_animated_sprite.flip_h = false;
		
var health: int = 100
