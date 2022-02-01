extends Control

var dialog = [
	'สวัสดี!' ,
	'คุณอยากจะซื้อปลาหรือเปล่า?'
]

var dialog_index = 0 
var finished = false 

func _ready():
	load_dialog() 
	
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		load_dialog()	
	
	
#func _physics_process(delta):
	#$"Ind".visible = finished
	#if Input.is_action_just_pressed("ui_accept"):
		#load_dialog()

func load_dialog():
	if dialog_index < dialog.size():
		$RichTextLabel.bbcode_text = dialog[dialog_index]
	else:
		queue_free()
	dialog_index += 1

	
#func load_dialog():
#	if dialog_index < dialog.size():
#		finished = false
#		$RichTextLabel.bbcode_text = dialog[dialog_index]
#		$RichTextLabel.percent_visible = 0
#		$Tween.interpolate_property(
#			$RichTextLabel, "percent_visible", 0,1,1,
#			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
#		)
#		$Tween.start()
#	else:
#		queue_free()
#	dialog_index +=1
#	print($Tween.interpolate_property)


func _on_Tween_tween_completed(object, key):
	finished = true
