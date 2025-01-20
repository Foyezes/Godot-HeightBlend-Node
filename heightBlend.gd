# This node was created by Foyezes
# x.com/Foyezes
# bsky.app/profile/foyezes.bsky.social

@tool
extends VisualShaderNodeCustom
class_name VisualShaderNodeBlend2

func _get_name():
	return "HeightBlend"

func _get_category():
	return "Color"

func _get_description():
	return "Blend between two heightmaps or use a single heightmap with a mask"

func _get_return_icon_type():
	return VisualShaderNode.PORT_TYPE_SCALAR

func _get_input_port_count():
	return 5

func _get_output_port_count():
	return 1

func _get_output_port_name(port):
	return ""
			
func _get_output_port_type(port):
	return VisualShaderNode.PORT_TYPE_SCALAR

func _get_input_port_type(port):
	match port:
		0:
			return VisualShaderNode.PORT_TYPE_SCALAR
		1:
			return VisualShaderNode.PORT_TYPE_SCALAR
		2:
			return VisualShaderNode.PORT_TYPE_SCALAR
		3:
			return VisualShaderNode.PORT_TYPE_SCALAR
		4:
			return VisualShaderNode.PORT_TYPE_SCALAR
			

func _get_input_port_default_value(port):
	match port:
		1:
			return 0.5
		2:
			return 1.0
		3:
			return 0.2
		4:
			return 1.0

func _get_input_port_name(port):
	match port:
		0:
			return "Height 1"
		1:
			return "Height 2"
		2:
			return "Contrast"
		3:
			return "Height Offset"
		4:
			return "Mask"

func _get_global_code(mode):
	return """
	
	float heightBlend(float height1_placeholder, float height2_placeholder, float contrast_placeholder, float height_offset_in_placeholder, float mask_placeholder){
		float add1 = height1_placeholder + height_offset_in_placeholder;
		float subtract1 = height2_placeholder - height_offset_in_placeholder;
		float add2 = subtract1 + mask_placeholder;
		float max1 = max(add1, add2);
		float subtract2 = max1 - add1;
		float multiply1 = subtract2 * contrast_placeholder;
		float result = clamp(multiply1, 0.0, 1.0);
		return result;
	}

	"""						

func _get_code(input_vars, output_vars, mode, type):
	return output_vars[0] + "= heightBlend(%s, %s, %s, %s, %s);" % [input_vars[0], input_vars[1], input_vars[2], input_vars[3], input_vars[4]]
