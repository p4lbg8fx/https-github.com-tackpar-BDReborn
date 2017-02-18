
do

function run(msg, matches)
       if not is_owner(msg) then
        return "⛔️ شما دسترسی ندارید ⛔️"
       end
    local data = load_data(_config.moderation.data)
      local linkgp = data[tostring(msg.chat_id_)]['settings']['linkgp']
       if not linkgp then 
        return "_اول با استفاده از دستور تنظیم لینک لینک را تنظیم کنید_"
       end
          local text = "<b>Group Link :</b>\n"..linkgp
		   tdcli.sendMessage(msg.sender_user_id_, 0, 1, text, 1, 'html')
           return "✅ لینک گروه در چت خصوصی ارسال شد ✅"
end

return {
  patterns = {
    "^[/#!]([Ll]inkpv)$",
    "^(لینک شخصی)$"
  },
  run = run
}

end
