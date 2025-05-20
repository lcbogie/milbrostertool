class_name Player
extends Resource

@export var current_team: Categories.current_team
@export var roster_position: Categories.position_category
@export var last_name: String
@export var first_name: String
@export var jersey: int
@export var bats: Categories.handedness
@export var throws: Categories.handedness
@export var birth_year: int
@export var status: Categories.status
@export var forty_man_status: bool
@export var fangraphs_fv: int
@export var position_projection: Categories.position_projection
@export var notes: String

# Session-assigned variables: these values are either derived at project initialization or assigned by the user
var age: int
var current_position: Categories.field_position
# Assign pitchers lineup_slot 0
var lineup_slot: int
# When multiple teams are supported, this variable will be changeable; for now, it's locked
var home_team: bool

func return_position_string():
	var s: String
	s = "N/A"
	match current_position:
		Categories.field_position.C:
			s = "C"
		Categories.field_position.FIRST:
			s = "1B"
		Categories.field_position.SECOND:
			s = "2B"
		Categories.field_position.THIRD:
			s = "3B"
		Categories.field_position.SS:
			s = "SS"
		Categories.field_position.LF:
			s = "LF"
		Categories.field_position.CF:
			s = "CF"
		Categories.field_position.RF:
			s = "RF"
	return s
# Not yet implemented: headshot; contract status (options v. R5 eligible, etc.)
# TODO: Color coded categories (high-end prospect, MLB rehab, veteran depth, etc.)
