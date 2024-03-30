extends CanvasLayer

@onready var select_skill_option_1 = $skill_holder/select_skill_option_1
@onready var select_skill_option_2 = $skill_holder2/select_skill_option_2
@onready var select_skill_option_3 = $skill_holder3/select_skill_option_3

var format_string = "Player está com a habilidade: %s"
var skill_fase_1 = "Sem nenhuma habilidade"

var rng = RandomNumberGenerator.new()

var skills_array = ["Habilidade Comum 1", "Habilidade Rara 1", "Habilidade Lendária 1",
			 "Habilidade Comum 2", "Habilidade Rara 2", "Habilidade Lendária 2",
			 "Habilidade Comum 3", "Habilidade Rara 3", "Habilidade Lendária 3"]

# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false
	
	var actual_string = format_string % [skill_fase_1]
	print(actual_string)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		visible = true
		get_tree().paused = true

func _on_select_skill_option_1_pressed():
	skill_fase_1 = skills_array[rng.randf_range(0, 8)]
	var actual_string = format_string % [skill_fase_1]
	print(actual_string)
	get_tree().paused = false
	visible = false


func _on_select_skill_option_2_pressed():
	skill_fase_1 = skills_array[rng.randf_range(0, 8)]
	var actual_string = format_string % [skill_fase_1]
	print(actual_string)
	get_tree().paused = false
	visible = false


func _on_select_skill_option_3_pressed():
	skill_fase_1 = skills_array[rng.randf_range(0, 8)]
	var actual_string = format_string % [skill_fase_1]
	print(actual_string)
	get_tree().paused = false
	visible = false
