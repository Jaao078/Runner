extends Area2D

@export var velocidade: int
func _ready() -> void:
	velocidade = 400
func _process(delta: float) -> void:
	position.x -= velocidade*delta*2
func _on_body_entered(body: Node2D) -> void:
	body.vidas -= 1
	queue_free()
