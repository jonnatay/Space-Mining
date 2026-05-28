extends CharacterBody2D

@export var speed = 400
@export var rotationSpeed = 1.5

var rotationDirection = 0

func get_input():
	rotationDirection = Input.get_axis("moveLeft", "moveRight")
	# !Modify this to have moving backwards as an "upgrade"
	velocity = transform.x * Input.get_axis("moveDown", "moveUp") * speed
	# While velocity is greater than zero
		# decrement velocity as spacebar is pressed
	
func _physics_process(delta):
	get_input()
	rotation += rotationDirection * rotationSpeed * delta
	move_and_slide()

# !!!Improve movement
	# Inertia when rotating
	# Movement not stopping unless brakes are applied, and even then it just dampens speed
