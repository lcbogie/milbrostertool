extends Node

var path_list = ["uid://dc2y0wk2pdenf", "uid://fgxdse7ft7kw", "uid://ww10ifdoyldf", "uid://d3p56xy658ey4", "uid://daqpjefdiyjtq", "uid://s8j61xbfiqep", "uid://5opm4k8dq7qp", "uid://dn7i5p22h87k8", "uid://2txg6x2rscc2", "uid://c7yw004bgsfye", "uid://depk6h3y8xktw", "uid://bpjl1cwrjefer"]
var player_bank: Array

func _ready():
	var p
	for s in path_list:
		p = load(s)
		p.age = 2025 - p.birth_year
		player_bank.append(p)
