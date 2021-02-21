extends Node2D

var Card = preload("res://src/Card.tscn")

export var width = 5
export var height = 5

export var grid = []

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func add_to_grid(pos: Vector2, card):
	grid[pos.x][pos.y] = card
	add_child(card)
	return card
	
func get_card(pos: Vector2) -> Card:
	return self.grid[pos.x][pos.y]
	

# Called when the node enters the scene tree for the first time.
func _ready():
	for _x in range(width):
		grid.push_back([])
		for _y in range(height):
			grid.back().push_back(null)
		
	
	var card = add_to_grid(Vector2(2, 2), Card.instance())
	card.title = "Fooo"
	card = add_to_grid(Vector2(3, 3), Card.instance())
	card.title = "Fooo222"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for x in self.width:
		for y in self.height:
			var pos = Vector2(x, y)
			var cell = self.get_card(Vector2(x, y))
			if cell:
				cell.transform = Transform2D(0, pos * 100)
	
