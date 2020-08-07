extends MenuButton

var studios_popup
var lifemenu_popup = PopupMenu.new()
var naturemenu_popup = PopupMenu.new()

func _ready():
	
	
	lifemenu_popup.set_name("lifemenupop")
	lifemenu_popup.add_item("Portrait",501)
	lifemenu_popup.add_item("FullFigure",502)
	lifemenu_popup.add_item("Maquette",503)
	
	naturemenu_popup.set_name("naturemenupop")
	naturemenu_popup.add_item("Trees",601)
	naturemenu_popup.add_item("Ocean",602)

	
	
	studios_popup = get_popup()
	studios_popup.add_child(lifemenu_popup)
	studios_popup.add_submenu_item("LifeStudy", "lifemenupop")
	

	studios_popup.add_child(naturemenu_popup)
	studios_popup.add_submenu_item("NatureStudy", "naturemenupop")
	
	#studios_popup.add_item("NatureStudy")
	studios_popup.add_item("StillLife")
	studios_popup.add_item("PaintingStudio",701)
	studios_popup.add_item("SculptStudio")

	studios_popup.connect("id_pressed",self,"_on_item_pressed")
	lifemenu_popup.connect("id_pressed",self,"_on_item_pressed")
	naturemenu_popup.connect("id_pressed",self,"_on_item_pressed")

func _on_item_pressed(id):
	print(id)
	if id == 501:
		get_tree().set_input_as_handled()
		get_tree().change_scene("res://scene/portrait0002.tscn")
		
	if id == 502:
		#get_tree().set_input_as_handled()
		get_tree().change_scene("res://scene/portrait0003.tscn")

	if id == 503:
		#get_tree().set_input_as_handled()
		get_tree().change_scene("res://scene/maquette.tscn")
		
	if id == 601:
		#get_tree().set_input_as_handled()
		#print("yes")
		get_tree().change_scene("res://scene/nature/tree1/tree.tscn")
		
	if id == 602:
		#get_tree().set_input_as_handled()
		#print("yes")
		get_tree().change_scene("res://scene/ocean.tscn")
	if id == 701:
		#get_tree().set_input_as_handled()
		#print("yes")
		get_tree().change_scene("res://scene/paint/stage.tscn")
"""
extends MenuButton


var popup
var submenu = PopupMenu.new()
var subsubmenu = PopupMenu.new()

func _ready():
	
	popup = get_popup()
	# Uncomment for submenu and subsubmenu.
	subsubmenu.set_name("subsubmenu")
	
	subsubmenu.add_item("Sub-submenu item a")
	#subsubmenu.set_item_id(0,10000)
	subsubmenu.add_item("Sub-submenu item b")


	submenu.set_name("submenu")
	#add item with name, id, accelerator key
	#submenu.add_item("Submenu item a",40,65)
	submenu.add_item("Portrait",40)
	
	submenu.add_item("FullFigure")
	submenu.add_child(subsubmenu)
	submenu.add_submenu_item("Sub-submenu", "subsubmenu")

	popup.add_child(submenu)
	popup.add_submenu_item("LifeStudy", "submenu")
	popup.add_item("Lessons",20,66)
	popup.add_item("Labs")

	#popup.set_item_id(0,0)
	#popup.set_item_id(1,1)
	
	popup.connect("id_pressed",self,"_on_item_pressed")
	submenu.connect("id_pressed",self,"_on_item_pressed")

func _on_item_pressed(id):
	print(id)
	if id == -2:
		print("hello")
	if id == 40:
		print("hiii")
		
	"""
