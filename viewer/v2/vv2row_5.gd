extends HBoxContainer

@onready var notes := get_node("notes")

func populate(p: Player):
	var s: String
	s = "NOTES: " + p.notes
	notes.text = s
