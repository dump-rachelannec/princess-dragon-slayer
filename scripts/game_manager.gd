extends Node
# make gamemanager  as unique name

var score = 0

@onready var score_label: Label = $ScoreLabel 

func add_point():
	score += 1
	score_label.text = "You collected " + str(score) + " coins."
