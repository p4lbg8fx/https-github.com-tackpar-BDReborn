-- Begin
local function savePlug(txt, pname)
	name, text = pname, txt
	local file = io.open("./plugins/"..name..".lua", "w")
	file:write(text)
	file:flush()
	file:close()
end

local function run(msg, matches)
	if is_sudo(msg) then
		msg.text = msg.content_.text_
		local lenght = msg.text
		if lenght:len() >= 4088 then
			return '_Message is so BIG!_'
	    else
			function string:trim()
				return self:gsub("^%s*(.-)%s*$", "%1")
			end
			local pText = matches[1]
			local lenText = 1
			while lenText ~= 0 do
				pText = pText:trim()
				pText, lenText = pText:gsub('^!+','')
			end
			savePlug(pText, matches[2])
			return "*Plugin was Saved!*"
		end
	end
end

return { patterns = { "^[/#!][Pp][Ll][Uu][Gg][Ii][Nn] (.+) (.*)$" }, run = run }

-- END
-- By @To0fan
-- CHANNEL: @LuaError

--------------------Notice----------------------

-- Message Must Be Only Under 4088 Charecters --

------------------------------------------------