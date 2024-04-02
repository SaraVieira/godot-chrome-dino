extends CharacterBody2D


const JUMP_VELOCITY = -300.0
var health = 1;

func player_hit(): 
	health = 0;
	if !health:
		queue_free()
		Global.saveHighScore(Global.score)
		Global.game_over = true
		Global.speed = 0;
		$"../Game Over".visible = true

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	$AnimatedSprite2D2.flip_h = false;

	if Input.is_action_pressed("ui_down"):
		$CollisionShapeUp.disabled = true
		$CollisionShapeCrouch.disabled = false
		$AnimatedSprite2D2.play("crouch")
	else:
		$CollisionShapeCrouch.disabled = true
		$CollisionShapeUp.disabled = false
		$AnimatedSprite2D2.play("walk")
		
	if is_on_floor():


		if Input.is_action_just_pressed("ui_accept"):
			velocity.y = JUMP_VELOCITY
	else:
		velocity.y += gravity * delta



	move_and_slide()

