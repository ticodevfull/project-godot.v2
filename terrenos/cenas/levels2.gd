extends Node2D



func _on_verdadeiro_pressed():
	
	get_tree().change_scene_to_file("res://terrenos/cenas/levels_3.tscn")
	GlobalVarScript.acertos+=10
	print(GlobalVarScript.acertos)


func _on_falso_pressed():
	get_tree().change_scene_to_file("res://terrenos/cenas/levels_3.tscn")
