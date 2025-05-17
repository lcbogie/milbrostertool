extends HBoxContainer

@onready var fv := get_node("futurevalue")

func populate(p: Player):
	var s: String
	if p.fangraphs_fv == 0:
		s = "FV: Not Rated"
	else:
		var pos: String
		#SP, SIRP, MIRP, FIRST, SECOND, SS, THIRD, C, LF, RF, CF, NA
		match p.position_projection:
			Categories.position_projection.SP:
				pos = "SP"
			Categories.position_projection.SIRP:
				pos = "SIRP"
			Categories.position_projection.MIRP:
				pos = "MIRP"
			Categories.position_projection.FIRST:
				pos = "1B"
			Categories.position_projection.SECOND:
				pos = "2B"
			Categories.position_projection.SS:
				pos = "SS"
			Categories.position_projection.THIRD:
				pos = "3B"
			Categories.position_projection.C:
				pos = "C"
			Categories.position_projection.LF:
				pos = "LF"
			Categories.position_projection.RF:
				pos = "RF"
			Categories.position_projection.CF:
				pos = "CF"
			Categories.position_projection.NA:
				pos = "N/A"
		s = "FV: " + str(p.fangraphs_fv) + " (" + pos + ")"
	fv.text = s
