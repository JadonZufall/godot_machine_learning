class_name ML_Model extends Resource


var _layers: Array[ML_Layer] = []
@export var layers: Array[ML_Layer]:
	get:
		return _layers

var depth: int :
	get:
		return _layers.size()
	set(value):
		_layers.resize(value)


func _init(p_layers: Array[ML_Layer]=[]) -> void:
	_layers = p_layers
