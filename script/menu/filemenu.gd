extends MenuButton

var popup

func _ready():
	popup = get_popup()
	popup.add_item("Open",101)
	popup.add_item("Save",102)
	popup.add_item("Quit",103)
	
	popup.connect("id_pressed",self,"_on_item_pressed")

func _on_item_pressed(id):
	match id:
		101:
			$FileOpenDialog.popup_centered()
		102:
			$FilSaveDialog.popup_centered()
		103:
			$ConfirmationDialogQuit.popup_centered()

func _on_ConfirmationDialogQuit_confirmed():
	get_tree().quit()



func _on_FileOpenDialog_file_selected(path):
	print(path)
	"""
	var f = File.new()
	f.open(path,1)
	get_parent().get_node("TextEdit").text = f.get_as_text()
	f.close()
	"""
	


func _on_FilSaveDialog_file_selected(path):
	print(path)
	
