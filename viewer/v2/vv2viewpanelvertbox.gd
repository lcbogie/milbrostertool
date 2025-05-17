extends VBoxContainer

@onready var row1 := get_node("Row1")
@onready var row2 := get_node("Row2")
@onready var row3 := get_node("Row3")
@onready var row4 := get_node("Row4")
@onready var row5 := get_node("Row5")

func populate(p: Player):
	row1.populate(p)
	row2.populate(p)
	row3.populate(p)
	row4.populate(p)
	row5.populate(p)
