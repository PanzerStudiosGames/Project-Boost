extends AnimatableBody3D

## Gives the moving hazard the location to move.
@export var destination:  Vector3 = Vector3(0,2,0)

## Gives the time duration for the moving hazarad to move to and fro.
@export var duration: float = 1.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var tween = create_tween()
	tween.set_loops() 
	tween.set_trans(tween.TRANS_SINE)
	tween.tween_property(self, "global_position", global_position + destination, duration)
	tween.tween_property(self, "global_position", global_position, duration)


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	pass
