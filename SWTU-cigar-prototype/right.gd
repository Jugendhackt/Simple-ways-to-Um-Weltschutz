extends Button

signal finish

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _pressed():
	emit_signal("finish", "right")
