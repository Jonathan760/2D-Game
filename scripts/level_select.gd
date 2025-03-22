extends Area2D

@onready var dialog_select_menu: Node2D = $DialogSelectMenu

# Called when the node enters the scene tree for the first time.
func _ready():
	dialog_select_menu.visible = false

func _on_body_entered(body):
	if body.name == "Player":
		dialog_select_menu.visible = true

func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		dialog_select_menu.visible = false

func _on_level_1_pressed() -> void:
	GameManager.load_level("res://scenes/level_scenes/level_1.tscn")


func _on_level_2_pressed() -> void:
	GameManager.load_level("res://scenes/example_level.tscn")


func _on_level_3_pressed() -> void:
	GameManager.load_level("res://scenes/example_level.tscn")


func _on_level_4_pressed() -> void:
	GameManager.load_level("res://scenes/example_level.tscn")
