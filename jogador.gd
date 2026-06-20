extends CharacterBody2D

var Vida = 5
var Pontos = 0
var velocidade_pulo = -600
func _physics_process(delta: float) -> void:
	velocity += get_gravity()*delta
	
	if is_on_floor():
		$Imagem.play('correr')
		if Input.is_action_pressed('ui_select'):
			velocity.y = velocidade_pulo
	else:
		$Imagem.play('pular')
	move_and_slide()
