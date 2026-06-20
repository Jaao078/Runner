extends Node2D

var Item = preload("item.tscn")
var tempo = 0
func _ready() -> void:
	pass
func _process(delta: float) -> void:
	tempo += delta
	if tempo >= 1.5:
		var novo_item = Item.instantiate()
		novo_item.position.x = randi_range(200, 500)
		novo_item.position.y = 1250
		add_child(novo_item)
		tempo = 0
