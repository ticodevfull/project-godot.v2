extends Node2D
@export var acertos: int = 0;

func _on_verdadeiro_pressed():
	get_tree().change_scene_to_file("res://terrenos/cenas/levels4.tscn")


func _on_falso_pressed():
	get_tree().change_scene_to_file("res://terrenos/cenas/levels4.tscn")
	GlobalVarScript.acertos+=1
	print(GlobalVarScript.acertos)
