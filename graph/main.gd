extends Node3D

var resolution = 50

var points = []

func f(x):
	return sin(PI * (x + Time.get_unix_time_from_system()))

func _ready():
	var pointScene = preload("res://point.tscn")
	var step = resolution / 2
	var scale = Vector3.ONE / step	
	for i in resolution:
		var point = pointScene.instantiate()
		point.position = Vector3(1, 0, 0) * ((i + 0.5) / step - 1.0)
		point.scale = scale
		add_child(point)
		points.append(point)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	for point in points:
		point.position.y = f(point.position.x)
