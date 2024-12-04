extends Node2D
var level = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var scene1_to_instance = preload("res://Scenes/MaxsLevel.tscn")
# Instance the scene
	var instance1 = scene1_to_instance.instantiate()
	add_child(instance1)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if level == 2:
		
		var scene2_to_instance = preload("res://Scenes/level2.tscn")
		var instance2 = scene2_to_instance.instantiate()
		add_child(instance2)
		instance2.get_node("Survivor").current_health = get_node("MaxsLevel").get_node("Survivor").current_health
		instance2.get_node("Survivor").total_shotgun_ammo =get_node("MaxsLevel").get_node("Survivor").total_shotgun_ammo
		instance2.get_node("Survivor").total_rifle_ammo =get_node("MaxsLevel").get_node("Survivor").total_rifle_ammo
		instance2.get_node("Survivor").total_pistol_ammo =get_node("MaxsLevel").get_node("Survivor").total_pistol_ammo
		instance2.get_node("Survivor").ammo_in_rifle =get_node("MaxsLevel").get_node("Survivor").ammo_in_rifle
		instance2.get_node("Survivor").ammo_in_pistol =get_node("MaxsLevel").get_node("Survivor").ammo_in_pistol
		instance2.get_node("Survivor").ammo_in_shotgun =get_node("MaxsLevel").get_node("Survivor").ammo_in_shotgun
		instance2.get_node("Survivor").medkit_count =get_node("MaxsLevel").get_node("Survivor").medkit_count
		
		get_node("MaxsLevel").queue_free()
		level = null
		pass
	
	if level ==3:
		
		var scene3_to_instance = preload("res://Scenes/RensLevel.tscn")
		var instance3 = scene3_to_instance.instantiate()
		add_child(instance3)
		instance3.get_node("Survivor").current_health = get_node("level2").get_node("Survivor").current_health
		instance3.get_node("Survivor").total_shotgun_ammo =get_node("level2").get_node("Survivor").total_shotgun_ammo
		instance3.get_node("Survivor").total_rifle_ammo =get_node("level2").get_node("Survivor").total_rifle_ammo
		instance3.get_node("Survivor").total_pistol_ammo =get_node("level2").get_node("Survivor").total_pistol_ammo
		instance3.get_node("Survivor").ammo_in_rifle =get_node("level2").get_node("Survivor").ammo_in_rifle
		instance3.get_node("Survivor").ammo_in_pistol =get_node("level2").get_node("Survivor").ammo_in_pistol
		instance3.get_node("Survivor").ammo_in_shotgun =get_node("level2").get_node("Survivor").ammo_in_shotgun
		instance3.get_node("Survivor").medkit_count =get_node("level2").get_node("Survivor").medkit_count
		
		get_node("level2").queue_free()
		level = null
		pass
		