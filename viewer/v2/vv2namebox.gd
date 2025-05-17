extends VBoxContainer

@onready var firstname := get_node("firstname")
@onready var lastname := get_node("lastname")

func populate(p: Player):
	firstname.text = p.first_name
	lastname.text = p.last_name
