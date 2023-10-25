extends Control

func _on_play_pressed():
	get_tree().change_scene_to_file("res://terrenos/cenas/levels.tscn")


func _on_opitions_pressed():
	get_tree().change_scene_to_file("res://menu/opitions_menu.tscn")


func _on_quit_pressed():
	get_tree().quit()

func _on_creditos_pressed():
	get_tree().change_scene_to_file("res://menu/creditos.tscn")
