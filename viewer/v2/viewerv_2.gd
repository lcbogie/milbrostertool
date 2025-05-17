extends Control

@onready var viewpanelvertbox := get_node("viewpanel/viewpanelmargins/viewpanelvertbox")

func populate(p: Player):
	viewpanelvertbox.populate(p)
