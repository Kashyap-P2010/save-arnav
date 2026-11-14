
extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collect_sound: AudioStreamPlayer2D = $AudioStreamPlayer2D

var collected := false

func _ready() -> void:
	animated_sprite_2d.play("default")

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D and not collected:
		collected = true

		# Play collection animation and sound
		animated_sprite_2d.play("collected")
		collect_sound.play()

		# Stop further collisions
		$CollisionShape2D.set_deferred("disabled", true)

		# Wait 2 seconds
		await get_tree().create_timer(2.0).timeout

		# Load the finished screen
		get_tree().change_scene_to_file("res://scenes/GameFinished.tscn")
