[gd_scene format=3 uid="uid://dvxst4h5o8ytb"]

[ext_resource type="PackedScene" uid="uid://mrbwys7ucpu" path="res://scenes/player.tscn" id="1_o5qli"]
[ext_resource type="Texture2D" uid="uid://ba8hjq7woqo2e" path="res://icon.svg" id="2_0wfyh"]

[sub_resource type="RectangleShape2D" id="RectangleShape2D_h00md"]
size = Vector2(129, 127)

[node name="Main" type="Node2D" unique_id=2052352982]

[node name="Player" parent="." unique_id=707328791 instance=ExtResource("1_o5qli")]
position = Vector2(434, 291)
scale = Vector2(1, 1)

[node name="StaticBody2D" type="StaticBody2D" parent="." unique_id=795284628]
position = Vector2(355, 439)

[node name="Sprite2D" type="Sprite2D" parent="StaticBody2D" unique_id=964299996]
position = Vector2(65, 17)
texture = ExtResource("2_0wfyh")

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D" unique_id=1498584275]
position = Vector2(65.5, 16.5)
shape = SubResource("RectangleShape2D_h00md")
