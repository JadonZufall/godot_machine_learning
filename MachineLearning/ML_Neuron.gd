class_name ML_Neuron extends Resource

const E: float = 2.718282

var inputs: Array[float] = []
var weights: Array[float] = []
var bias: Array[float] = []


static func sigmoid(x: float) -> float: return 1/(1+E**(-x))


var output: float:
	get:
		var weighted_sum: float = 0.0
		for idx in range(0, inputs.size()):
			weighted_sum += weights[idx]*inputs[idx]
		for idx in range(0, bias.size()):
			weighted_sum += bias[idx]
		return sigmoid(weighted_sum)
