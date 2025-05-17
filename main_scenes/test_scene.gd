extends Node2D

@onready var viewpanel := get_node("viewpanel")

func _ready():
	viewpanel.populate(PlayerIndex.player_bank[0])
