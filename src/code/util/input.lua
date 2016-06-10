Input = {}

function Input.update(keys,k)
  local action = keys[k]
  if action then return action() end
end

return Input

--[[
keys = {
  escape = os.exit(),
  x = function()
    if state == f then
    end
  end,
  up = function()

  end,
  down = function()

  end,
  right = function()

  end,
  left = function()

  end
  }
]]
