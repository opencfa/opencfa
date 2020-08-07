extends MenuButton

var popup
var degree_popup = PopupMenu.new()

var shortcourse_popup = PopupMenu.new()

func _ready():
	#get the popup of the menubutton
	popup = get_popup()
	
	#Create submenu items
	
	degree_popup.add_item("Fundamentals")
	degree_popup.add_item("To do")
	degree_popup.set_name("bfa")
	#Add the submenu to the menu popup
	popup.add_submenu_item("Painting","bfa",404)
	
	popup.add_item("Sculpture")
	popup.add_item("Design")
	#Add more menuitems
	shortcourse_popup.add_item("Photography")
	shortcourse_popup.add_item("Calligraphy")
	shortcourse_popup.set_name("shortcourse")
	#Add the submenu to the menu popup
	popup.add_submenu_item("ShortCourse","shortcourse",490)
	#popup.add_item("ShortCourse",402)
	
	#Attach the popups
	popup.add_child(degree_popup)
	popup.add_child(shortcourse_popup)
	

	
	popup.connect("id_pressed",self,"_on_item_pressed")
	degree_popup.connect("id_pressed",self,"_on_item_pressed")

func _on_item_pressed(id):
	print(id)
