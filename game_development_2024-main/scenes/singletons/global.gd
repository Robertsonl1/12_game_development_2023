extends Node

var fog := false
var light = 1
var postprocessing = 1
var bob := false
var difficulty = 1

func instantiate_node(packed_scene, pos = null, parent = null):
	var clone = packed_scene.instantiate()
	
	var root = get_tree().root
	if parent == null:
		parent = root.get_child(root.get_child_count()-1)
	
	parent.add_child(clone)
	
	if pos != null:
		clone.global_transform.origin = pos
	
	return clone
