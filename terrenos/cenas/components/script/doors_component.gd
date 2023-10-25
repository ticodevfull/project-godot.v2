extends Area2D
class_name doorscomponents

var ref_player : Character =  null
@export_category("Variables")
@export var _teleportPosition: Vector2 

@export_category("Objects")
@export var animation: AnimationPlayer=null
# Called when the node enters the scene tree for the first time.
func _on_body_entered(_body)->void:
	if _body is Character:
		ref_player = _body
		animation.play("open")
		animation.play("open2")
		
func _on_animation_finished(anim_name: String)->void:
	if anim_name == "open"&&"open2":
		ref_player.global_position=_teleportPosition

