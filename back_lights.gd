extends Node2D

func _process(delta: float) -> void:
	$PointLight2D.energy = $Brightness.value
	if $Hue.value != 1:
		$PointLight2D.set_color(Color.from_hsv($Hue.value,1,0.6))
	else:
		$PointLight2D.set_color(Color.from_hsv($Hue.value,0,0.6))
		
	if Input.is_action_pressed("Enter"):
		$Brightness.value += 0.1
	if Input.is_action_pressed("RShift"):
		$Brightness.value -= 0.1
	if Input.is_action_pressed("ctrl"):
		$Hue.value += 0.01
	if Input.is_action_pressed("alt"):
		$Hue.value -= 0.01
