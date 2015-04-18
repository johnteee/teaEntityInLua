local et = require("entity")

local abcTool = et:new()
abcTool:def():action("say",
function ()
	print(123)
end,
"number")

--abcTool:exec():