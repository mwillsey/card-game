extends Node2D

class_name Card


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var title: String = "card name"
export var health: int = 5


# Called when the node enters the scene tree for the first time.
func _ready():
	$Rect/Title.text = self.title
	$Rect/Health.text = "%d" % self.health


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
