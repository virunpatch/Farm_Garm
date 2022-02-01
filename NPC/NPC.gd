extends Area2D


func _input(event):
	if event.is_action_pressed("Talk") and len(get_overlapping_bodies()) > 0:
		find_and_use_dialogue()

func find_and_use_dialogue():
	var dialogue_player = get_node_or_null("DialoguePlayer")
	
	if dialogue_player:
		dialogue_player.play()















#var can_interact = false 
#const DIALOG = preload("res://DialogBox/DialogBoxl.tscn")

#func _physics_process(delta):
	#$AnimatedSprite.play()

#func _on_Area2D_body_entered(body):
	#if body.name == "Player":
		#$Label.visible = true
		#can_interact = true


#func _on_Area2D_body_exited(body):
	#if body.name == "Player":
		#$Label.visible = false
		#can_interact = false

#func _input(event):
	#if Input.is_key_pressed(KEY_E) and can_interact == true:
		#$Label.visible = false
		#var dialog = DIALOG.instance()
		#get_parent().add_child(dialog)
		
