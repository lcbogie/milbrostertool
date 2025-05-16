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
var age: int
@export var status: Categories.status
@export var forty_man_status: bool
@export var fangraphs_fv: int
@export var position_projection: Categories.position_projection
@export var notes: String

# Not yet implemented: headshot; contract status (options v. R5 eligible, etc.)
