extends Camera2D

@onready var BottomWorldBorder = $"../../BottomBorder"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	# Make the bottom world border follow the camera vertically
	BottomWorldBorder.position = get_screen_border_bottom()
	limit_bottom = BottomWorldBorder.position.y

func get_screen_border_bottom():
	var screen_center = get_screen_center_position()
	var screen_size_half = (get_viewport_rect().size.y)/2
	return Vector2(screen_center.x, screen_center.y + screen_size_half)
