extends Node2D

@onready var v1 := get_node("Viewer1")
@onready var v2 := get_node("Viewer2")
@onready var v3 := get_node("Viewer3")
@onready var v4 := get_node("Viewer4")
@onready var v5 := get_node("Viewer5")
@onready var v6 := get_node("Viewer6")
@onready var v7 := get_node("Viewer7")
@onready var v8 := get_node("Viewer8")
@onready var v9 := get_node("Viewer9")
@onready var bank := get_node("PlayerBank")
@onready var preview := get_node("Previewer")

func _ready():
	initialize_bank()

func initialize_bank():
	var s: String
	for p in PlayerIndex.player_bank:
		s = p.first_name + " " + p.last_name
		bank.add_item(s)


func _on_player_bank_item_selected(index: int) -> void:
	preview.populate(PlayerIndex.player_bank[index])


func _on_bat_1_button_down() -> void:
	if bank.is_anything_selected():
		var selection_array = bank.get_selected_items()
		v1.populate(PlayerIndex.player_bank[selection_array[0]])


func _on_bat_2_button_down() -> void:
	if bank.is_anything_selected():
		var selection_array = bank.get_selected_items()
		v2.populate(PlayerIndex.player_bank[selection_array[0]])


func _on_bat_3_button_down() -> void:
	if bank.is_anything_selected():
		var selection_array = bank.get_selected_items()
		v3.populate(PlayerIndex.player_bank[selection_array[0]])


func _on_bat_4_button_down() -> void:
	if bank.is_anything_selected():
		var selection_array = bank.get_selected_items()
		v4.populate(PlayerIndex.player_bank[selection_array[0]])


func _on_bat_5_button_down() -> void:
	if bank.is_anything_selected():
		var selection_array = bank.get_selected_items()
		v5.populate(PlayerIndex.player_bank[selection_array[0]])


func _on_bat_6_button_down() -> void:
	if bank.is_anything_selected():
		var selection_array = bank.get_selected_items()
		v6.populate(PlayerIndex.player_bank[selection_array[0]])


func _on_bat_7_button_down() -> void:
	if bank.is_anything_selected():
		var selection_array = bank.get_selected_items()
		v7.populate(PlayerIndex.player_bank[selection_array[0]])


func _on_bat_8_button_down() -> void:
	if bank.is_anything_selected():
		var selection_array = bank.get_selected_items()
		v8.populate(PlayerIndex.player_bank[selection_array[0]])


func _on_bat_9_button_down() -> void:
	if bank.is_anything_selected():
		var selection_array = bank.get_selected_items()
		v9.populate(PlayerIndex.player_bank[selection_array[0]])
