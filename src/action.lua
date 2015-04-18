local Object = require("object")

local Action = Object:new();

function Action:new (obj)
  obj = Object.new( self, obj )
  
  obj.f = nil
  obj.tags = {};
  
  return obj
end

function Action:addTag (tag)
  self.tags[tag] = true
end

function Action:removeTag (tag)
  self.tags[tag] = nil
end

function Action:isTagged (tag)
  return self.tags[tag]
end

return Action