extends KinematicBody

var radius = 50
var angle = 0
export var height = 20
export var speed = 5


func _ready():
	randomize()
	angle = randf() * 2 * PI



func new_position(a):
	var pos = Vector3(0,height,0)
	pos.x = radius * cos(a)
	pos.z = radius * sin(a)
	$Tween.interpolate_property(self, "global_transform:origin", global_transform.origin, pos, speed, Tween.TRANS_EXPO, Tween.EASE_IN_OUT)
	$Tween.start()
