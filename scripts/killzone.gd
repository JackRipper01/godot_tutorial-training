extends Area2D

@onready var inmunity_timer = $Inmunity_timer

func _ready():
	inmunity_timer.start()
func _on_body_entered(body):
	if inmunity_timer.is_stopped():
		print("Yu dai")
		get_tree().reload_current_scene()



