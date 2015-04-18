local Object = require("object")
local Action = require("action")
local Definition = Object:new();

function Definition:new (obj)
  obj = Object.new( self, obj )
  
  obj.tags = {}
  obj.actions = {}
  
  return obj
end

function Definition:action (name, f, tag)
  if f == nil then error("Name and Function couldn't be nil") end
  if type(f) ~= "function" then error("Not a Function") end
  
  local action = Action:new ()
  self:addAction (name, action)
  self:attachTagToAction (tag, action)
end

function Definition:addAction (name, action)
  local actions = self.actions
  if actions[name] ~= nil then error("This Action name has been Defined") end
  
  action.name = name
  actions[name] = action
end

function Definition:attachTagToAction (tag, action)
  if tag == nil or tag == "" then return end
  if type(tag) ~= "string" then error("123") end
  
  action:addTag(tag)
  self.tags[tag] = self.tags[tag] or {}
  local collect = self.tags[tag]
  collect[#collect + 1] = action
end

return Definition