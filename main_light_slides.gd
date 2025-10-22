extends Node2D
class_name light

func _process(delta: float) -> void:
	$Stagelight.rotation = $Sliders/Rotation.value / 150
	$Stagelight.position.x = $Sliders/Position.value
	
