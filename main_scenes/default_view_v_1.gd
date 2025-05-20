extends Node2D


func _on_assignment_button_button_down() -> void:
	get_tree().change_scene_to_file("res://main_scenes/lineup_assignment.tscn")
