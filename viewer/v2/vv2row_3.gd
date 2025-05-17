extends HBoxContainer

@onready var forty_man := get_node("40man")
@onready var age := get_node("age")

func populate(p: Player):
	var s: String
	s = "40m: "
	if p.forty_man_status:
		s += "Y"
	else:
		s += "N"
	forty_man.text = s
	
	s = "AGE: " + str(p.age)
	age.text = s
