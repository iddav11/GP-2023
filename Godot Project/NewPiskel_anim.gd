extends Sprite2D
@onready var animation = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	animation.play("Bounce_in")
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
