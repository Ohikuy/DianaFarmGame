extends Resource

class_name ItemSpace

export(Array,Resource) var items

signal items_changed(indexs)

var total_volumn = items.size()
var used_volumn = countNonNullObjects(items)

func set_item(index, item):
	var current_item = items[index]
	items[index] = item
	emit_signal("items_changed",[index])
	used_volumn = countNonNullObjects(items)
	return current_item

func get_item(index):
	return items[index]

func remove_item(index):
	var current_item = items[index]
	items[index] = null
	emit_signal("items_changed",[index])
	used_volumn = countNonNullObjects(items)
	return current_item

func swap_item(origin_index, target_index):
	var target_item = items[target_index]
	items[target_index] = items[origin_index]
	items[origin_index] = target_item
	used_volumn = countNonNullObjects(items)
	emit_signal("items_changed",[origin_index, target_index])

func countNonNullObjects(array):
	var count = 0
	for obj in array:
		if obj != null:
			count += 1
	return count