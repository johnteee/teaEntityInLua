local Object = require("object")
local Definition = require("definition")

local Entity = Object:new();

function Entity:new (obj)
  obj = Object.new( self, obj )
  
  obj.Def = Definition:new()
  
  return obj
end

function Entity:def ()
  return self.Def
end

return Entity