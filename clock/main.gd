extends Node3D

@onready var hour_indicator: Node3D = $hour_indicator
@onready var minute_indicator: Node3D = $minute_indicator
@onready var second_indicator: Node3D = $second_indicator

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var timeDict = Time.get_time_dict_from_system()
	var hour = timeDict.hour;
	var minute = timeDict.minute;
	var seconds = timeDict.second;
		
	hour_indicator.rotation = Vector3(0, 0, hour * -deg_to_rad(30))
	minute_indicator.rotation = Vector3(0, 0, minute * -deg_to_rad(6))
	second_indicator.rotation = Vector3(0, 0, seconds * -deg_to_rad(6))
	
