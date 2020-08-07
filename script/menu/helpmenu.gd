extends MenuButton

var popup
func _ready():
	popup = get_popup()
	popup.add_item("Docs",1001)
	popup.add_item("OnlineHelp",1002)
	popup.add_item("About",1003)
	popup.connect("id_pressed",self,"_on_item_pressed")

func _on_item_pressed(id):
	print(id)
	if id == 1001:
		OS.shell_open("https://www.google.com")
