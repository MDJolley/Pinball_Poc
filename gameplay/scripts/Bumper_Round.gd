extends StaticBody2D

var strength : int = 700

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func hit(body):
	if body.is_in_group("ball"):
		Player.add_points(10)
		var direction : Vector2 = body.position - self.position
#		body.apply_impulse(direction.normalized() * strength, Vector2())
		body.set_linear_velocity(direction.normalized() * strength)
