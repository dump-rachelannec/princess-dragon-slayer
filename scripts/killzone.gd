extends Area2D

@onready var timer: Timer = $Timer # hold ctrl while dragging the Timer from nodes


func _on_body_entered(body: Node2D) -> void:
	print("you died!") #collision on mask 2 (on inspector) bcs thats where the player is
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free() # player will fall of
	timer.start()
	
	

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene() # when died, the scence restarts
