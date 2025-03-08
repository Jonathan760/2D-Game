extends Area2D

@export var health_component : HealthComponent

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	if body.health_component:
		body.health_component.insta_kill()
