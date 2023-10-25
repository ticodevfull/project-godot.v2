extends CharacterBody2D
class_name  Character
@export_category("Variables")
@export var _move_speed: float =64.0
@export var _acceleration: float = 0.2
@export var _friction: float = 0.2
@export_category("Objects")
@export var _animaion_tree: AnimationTree = null
@export var _timer: Timer = null;
@export var acertos: int = 0;
var _state_machine 
var _is_attcking: bool=false
func _ready()->void:
	_animaion_tree.active=true
	_state_machine =  _animaion_tree["parameters/playback"]
func _physics_process(delta: float )-> void :
	_attack()
	_move()
	_animate()
	move_and_slide()
func _move()-> void:
	var _direction: Vector2=Vector2(
		Input.get_axis("move_left","move_rigth"),
		Input.get_axis("move_up","move_down")	
	)
	if _direction != Vector2.ZERO:
		_animaion_tree["parameters/idle/blend_position"]= _direction
		_animaion_tree["parameters/walk/blend_position"]=_direction
		_animaion_tree["parameters/attack/blend_position"]=_direction
		velocity.x = lerp(velocity.x, _direction.normalized().x * _move_speed, _acceleration)
		velocity.y = lerp(velocity.y, _direction.normalized().y * _move_speed, _acceleration)
		return
	velocity.x = lerp(velocity.x, _direction.normalized().x * _move_speed,_friction )
	velocity.y = lerp(velocity.y, _direction.normalized().y * _move_speed,_friction )
func _attack()->void:
	if Input.is_action_just_pressed("attack") and _is_attcking == false:
		set_physics_process(false)
		_timer.start()
		_is_attcking=true
		
func _animate()->void:
	if _is_attcking:
		_state_machine.travel("attack")
		return
		
	if velocity.length()>3:
		_state_machine.travel("walk")
		return
		
	_state_machine.travel("idle")

func _on_attacking_time_timeout()->void:
	_is_attcking=false
	set_physics_process(true)


func _on_atack_area_body_entered(_body)->void:
	if _body.is_in_group("enemy"):
		_body.update_health(randi_range(1,5))

