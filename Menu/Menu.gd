extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/start.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_start_pressed():
	get_tree().change_scene("res://Menu/Display_Fram.tscn")


func _on_option__pressed():
	pass # Replace with function body. ยังไม่ได้ทำหน้านี้ 


func _on_quit_pressed():
	get_tree().quit()
