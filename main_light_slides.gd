extends Node2D
class_name light

func _process(delta: float) -> void:
	$Stagelight.rotation = $Sliders/Rotation.value / 150
	$Stagelight.position.x = $Sliders/Position.value
	$Stagelight/Light.scale.x = $Sliders/Dilation.value
	if Input.is_action_pressed("Left"):
		$Sliders/Position.value -= 2
	if Input.is_action_pressed("Right"):
		$Sliders/Position.value += 2
	if Input.is_action_pressed("A"):
		$Sliders/Rotation.value -= 2
	if Input.is_action_pressed("D"):
		$Sliders/Rotation.value += 2
	if Input.is_action_pressed("S"):
		$Sliders/Dilation.value -= 0.05
	if Input.is_action_pressed("W"):
		$Sliders/Dilation.value += 0.05
