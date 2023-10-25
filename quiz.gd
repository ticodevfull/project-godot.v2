extends Control
@export var test = 0


func _on_button_pressed():
	
	if get_tree():
		test +=10;
		print(test)
		



func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://")
