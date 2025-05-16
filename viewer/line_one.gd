extends HBoxContainer

@onready var nametext := get_node("Name")
@onready var positiontext := get_node("Position")
@onready var jerseytext := get_node("Jersey")
@onready var agetext := get_node("Age")

func populate(p: Player):
	var s: String
	s = "     " + p.first_name + " " + p.last_name
	nametext.text = s
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
	positiontext.text = s
	s = "#" + str(p.jersey)
	jerseytext.text = s
	s = "AGE: " + str(p.age)
	agetext.text = s
