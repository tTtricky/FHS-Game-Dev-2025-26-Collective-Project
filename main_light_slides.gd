extends Node2D
class_name light

func _process(delta: float) -> void:
	$Stagelight.rotation = $Sliders/Rotation.value / 150
	$Stagelight.position.x = $Sliders/Position.value
	$Stagelight/Light.scale.x = $Sliders/Dilation.value / 8
	$Stagelight/Light/PointLight2D.energy = $Sliders/Brightness.value
	if $Sliders/Hue.value != 1:
		$Stagelight/Light/PointLight2D.set_color(Color.from_hsv($Sliders/Hue.value,1,1))
	else:
		$Stagelight/Light/PointLight2D.set_color(Color.from_hsv($Sliders/Hue.value,0,1))
	if Input.is_action_pressed("ui_left"):
		$Sliders/Position.value -= 2
	if Input.is_action_pressed("ui_right"):
		$Sliders/Position.value += 2
	if Input.is_action_pressed("A"):
		$Sliders/Rotation.value -= 2
	if Input.is_action_pressed("D"):
		$Sliders/Rotation.value += 2
	if Input.is_action_pressed("S"):
		$Sliders/Dilation.value -= 0.1
		print($Sliders/Dilation.value)
	if Input.is_action_pressed("W"):
		$Sliders/Dilation.value += 0.1
	if Input.is_action_pressed("ui_up"):
		$Sliders/Brightness.value += 0.1
	if Input.is_action_pressed("ui_down"):
		$Sliders/Brightness.value -= 0.1
	if Input.is_action_pressed("Shift"):
		$Sliders/Hue.value -= 0.01
	if Input.is_action_pressed("Space"):
		$Sliders/Hue.value += 0.01
