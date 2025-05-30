local mytable = {} 

--- Merge all the given tables into a single one and return it.
---@param ... table
---@return table
function mytable.merge_all(...)
  local ret = {}
  for _, tbl in ipairs({...}) do
    for k, v in pairs(tbl) do
      ret[k] = v
    end
  end
  return ret
end

local is_list = function(t)
  if type(t) ~= "table" then
    return false
  end
  -- a list has list indices, an object does not
  return ipairs(t)(t, 0) and true or false
end

--- Flatten the given list of (item or (list of (item or ...)) to a list of item.
--- (nested lists are supported)
---@param list table
---@return table
function mytable.flatten_list(list)
  local flattened_list = {}
  for _, item in ipairs(list) do
    if is_list(item) then
      for _, sub_item in ipairs(mytable.flatten_list(item)) do
        table.insert(flattened_list, sub_item)
      end
    else
      table.insert(flattened_list, item)
    end
  end
  return flattened_list
end


return {
	mytable = mytable,
}
