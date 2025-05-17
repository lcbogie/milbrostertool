extends HBoxContainer

@onready var namebox := get_node("namebox")
@onready var jersey := get_node("jersey")

func populate(p: Player):
	namebox.populate(p)
	var s: String
	s = "#" + str(p.jersey)
	jersey.text = s
