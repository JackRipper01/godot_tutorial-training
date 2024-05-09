extends Area2D

@onready var inmunity_timer = $Inmunity_timer
@onready var timer = $Timer

func _ready():
	inmunity_timer.start()
func _on_body_entered(body):
	if inmunity_timer.is_stopped():
		print("Yu dai")
		timer.start()
		body.get_node("CollisionShape2D").queue_free()
		Engine.time_scale = 0.5
		

func _on_timer_timeout_TimerNode():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
