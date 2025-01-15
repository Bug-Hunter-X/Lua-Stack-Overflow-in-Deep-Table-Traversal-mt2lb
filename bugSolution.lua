local function foo(t)
  local q = {}
  q[#q+1] = t

  while #q > 0 do
    local current = q[#q]
    q[#q] = nil
    for k, v in pairs(current) do
      if type(v) == "table" then
        q[#q+1] = v
      end
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)

-- This iterative solution avoids the stack overflow error by using a queue to manage the traversal.