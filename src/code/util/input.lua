local input = {}

function input.i(keys,k, ...)
  local action = keys[k]
  if action then
    return action(...)
  end
end

function input.update(keys,k, ...)
  local action = keys[k]
  if action then
    return action(...)
  end
end

function input.fupdate(keys,k, ...)
  local action = keys[k]
  if action then
    return action(...)
  end
end

return input
