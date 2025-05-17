extends HBoxContainer

@onready var pos := get_node("position")
@onready var handed := get_node("handed")

func populate(p: Player):
	var s: String
	match p.roster_position:
		Categories.position_category.P:
			s = "P"
		Categories.position_category.C:
			s = "C"
		Categories.position_category.I:
			s = "Inf"
		Categories.position_category.O:
			s = "OF"
		Categories.position_category.DH:
			s = "DH"
	pos.text = s
	match p.bats:
		Categories.handedness.R:
			s = "R"
		Categories.handedness.L:
			s = "L"
		Categories.handedness.S:
			s = "S"
	s += "/"
	match p.throws:
		Categories.handedness.R:
			s += "R"
		Categories.handedness.L:
			s += "L"
		Categories.handedness.S:
			s += "S"
	handed.text = s
