--start 
local function run(msg, matches)
  if matches[1]:lower() == "gview" then
     redis:set('bot:viewget'..msg.sender_user_id_,true)
     tdcli.sendMessage(msg.chat_id_, msg.id_, 1, '*Please send a post now!*', 1, 'md')
end

end
return {
patterns = {
    "^[#!/](gview)$",
    "^(gview)$"
},
run = run
}

--end by @CliAli
--channel @LuaError