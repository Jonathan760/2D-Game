extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.health_component.insta_kill()
