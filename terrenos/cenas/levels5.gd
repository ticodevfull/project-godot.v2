extends Node2D


func _on_verdadeiro_pressed():
	get_tree().change_scene_to_file("res://terrenos/cenas/levels6.tscn")
	


func _on_falso_pressed():
	get_tree().change_scene_to_file("res://terrenos/cenas/levels6.tscn")
	GlobalVarScript.acertos+=1
	print(GlobalVarScript.acertos)
