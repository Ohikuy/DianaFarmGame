tool
class_name GameDB extends Resource


# 返回数据库的名称(用于编辑器显示)
func get_name() -> String:
	return _get_name()

func _get_name() -> String:
	return "未命名数据库"


# 返回数据库的图标(用于编辑器显示)
func get_icon(interface: EditorInterface) -> Texture:
	return _get_icon(interface)

func _get_icon(_interface: EditorInterface) -> Texture:
	return Texture.new()


# 返回数据库的编辑器控件
func get_control(interface: EditorInterface) -> Control:
	return _get_control(interface)

func _get_control(_interface: EditorInterface) -> Control:
	return Control.new()