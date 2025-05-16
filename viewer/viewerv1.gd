extends VBoxContainer

@onready var lineone := get_node("LineOne")
@onready var linetwo := get_node("LineTwo")

func populate(p: Player):
	lineone.populate(p)
	linetwo.populate(p)
