extends KinematicBody2D

onready var sprite = $Sprite

var blue_icon = load("res://icon.png")
var pink_icon = load("res://icon_pink.png")

var currently_pink = false

func _process(delta):
	var vel = Vector2()
	if Input.is_action_pressed("up"):
		vel.y = -1
	if Input.is_action_pressed("down"):
		vel.y = 1
	if Input.is_action_pressed("left"):
		vel.x = -1
	if Input.is_action_pressed("right"):
		vel.x = 1
	
	move_and_slide(vel * 300)
	
	if Input.is_action_just_pressed("change_color"):
		if currently_pink:
			sprite.texture = blue_icon
			currently_pink = false
		else:
			sprite.texture = pink_icon
			currently_pink = true
