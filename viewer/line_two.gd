extends HBoxContainer

@onready var bats_throws := get_node("BatsThrows")
@onready var forty_man := get_node("FortyMan")
@onready var fv := get_node("FV")

func populate(p: Player):
	var s: String
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
	bats_throws.text = s
	
	s = "40m: "
	if p.forty_man_status:
		s += "Y"
	else:
		s += "N"
	forty_man.text = s
	
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
