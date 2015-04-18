local Object = require("object")

local Execution = Object:new();

function Execution:new (obj)
  obj = Object.new( self, obj )
  
  return obj
end

return Execution