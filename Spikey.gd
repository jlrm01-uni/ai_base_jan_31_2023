extends Area2D


func _ready() -> void:
	add_to_group("Enemies")


func _on_Spikey_body_entered(body: Node) -> void:
	if body.name == "Player":
		get_tree().call_group("Player", "die")
