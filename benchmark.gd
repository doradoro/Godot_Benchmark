extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var mucho_texto = "Comenzando el benchmark... \n\n"
	# test de C#
	var startC = OS.get_system_time_msecs()
	
	for _i in range(50000):
		CSharp_.cacafuti()
	
	var endC = OS.get_system_time_msecs()
	var elapsedC = endC-startC
	
	mucho_texto += "El proceso en C# ha tardado: " + str(elapsedC) + " milisegundos\n\n"
	
	# test de GDScript
	startC = OS.get_system_time_msecs()
	
	for _i in range(50000):
		GDScript_.cacafuti()
	
	endC = OS.get_system_time_msecs()
	elapsedC = endC-startC
	
	mucho_texto += "El proceso en GDScript ha tardado: " + str(elapsedC) + " milisegundos\n\n"
	
	# imprimiendo el texto
	get_node("RichTextLabel").text = mucho_texto
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
