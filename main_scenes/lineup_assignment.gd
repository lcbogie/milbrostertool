extends Node2D


func _on_view_mode_button_button_down() -> void:
	get_tree().change_scene_to_file("res://main_scenes/default_view_v1.tscn")
