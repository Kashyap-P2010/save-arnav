extends Control

@onready var play_again_button: TextureButton = $PlayAgainButton

func _ready() -> void:
	play_again_button.grab_focus()
	play_again_button.pressed.connect(_on_play_again_button_pressed)

func _on_play_again_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") or event.is_action_pressed("jump"):
		_on_play_again_button_pressed()
