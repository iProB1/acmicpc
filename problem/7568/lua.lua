local n = io.read("*n")
local p = {}

for i = 1, n do
  local w, h = io.read("*n", "*n")
  p[i] = {w = w, h = h, r = 1}
end

for ff = 1, n do
  for sec = 1, n do
    if ff ~= sec and p[ff].w < p[sec].w and p[ff].h < p[sec].h then
      p[ff].r = p[ff].r + 1
    end
  end
end

for fr = 1, n do
  io.write(p[fr].r)
  if fr < n then 
      io.write(" ") 
  end
end
