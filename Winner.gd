extends Label

@rpc("any_peer", "call_local") func return_to_lobby():
	get_tree().change_scene_to_file("res://Network_setup.tscn")

func _on_Win_timer_timeout():
	if get_tree().is_server():
		rpc("return_to_lobby")
