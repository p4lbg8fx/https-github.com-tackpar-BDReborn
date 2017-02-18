--begin
local function run(msg, matches)
  if is_sudo(msg) then
	if matches[1]:lower() == "send" and matches[2] and matches[3] then
		local send_file = "./"..matches[2].."/"..matches[3]
		tdcli.sendDocument(msg.chat_id_, msg.id_,0, 1, nil, send_file, '@LuaError')
	end
	if matches[1]:lower() == "plug" and matches[2] then
	    local plug = "./plugins/"..matches[2]..".lua"
		tdcli.sendDocument(msg.chat_id_, msg.id_,0, 1, nil, plug, '@LuaError')
    end
  end
end

return {
  patterns = {
  "^[!/#]([Ss][Ee][Nn][Dd]) (.*) (.*)$",
  "^[!/#]([Pp][Ll][Uu][Gg]) (.*)$"
  },
  run = run
}

--end by #@To0fan#