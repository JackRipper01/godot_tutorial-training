extends Area2D

@onready var game_manager = %GameManager
@onready var score_label = %Score_label
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	game_manager.add_point()
	score_label.text = "Coins: "+ str(game_manager.score)
	animation_player.play("pickup")
