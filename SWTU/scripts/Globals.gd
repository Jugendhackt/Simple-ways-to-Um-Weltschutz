extends Node

export var lifes = 3
export var time_modifier = 1
export var round_counter = 0

export(Array, PackedScene) var levels = []

func _ready():
	randomize()

func round_finished():
	round_counter += 1

func get_time_modifier():
	return pow(0.92, round_counter)

func get_difficulty():
	return 10 + round_counter * 3 + pow(round_counter, 1.1)

func random_level():
	var level = levels[rand_range(0, levels.size())]
	print(str(level))
	get_tree().change_scene_to(level)