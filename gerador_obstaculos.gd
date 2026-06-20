extends Node2D

var Obstaculo = preload("obstaculo.tscn")

var tempo = 0
func _ready() -> void:
	pass
func _process(delta: float) -> void:
	tempo += delta
	if tempo >= 4:
		tempo = 0
		var novo_obstaculo = Obstaculo.instantiate()

		novo_obstaculo.position.x = randi_range(200, 500)
		novo_obstaculo.position.y = 505
		add_child(novo_obstaculo)
		tempo = 0
