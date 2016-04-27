local action = function(msg)
sendChatAction(msg.chat.id, 'typing')

    if msg.text:match("^[!/#]bold") and msg.reply_to_message then
        sendMessage(msg.chat.id, '*'..msg.reply_to_message.text..'*',true,nil,true)
   return
end
   if msg.text:match("^[!/#]italic") and msg.reply_to_message then
        sendMessage(msg.chat.id, '_'..msg.reply_to_message.text..'_',true,nil,true)
   return
end
   if msg.text:match("^[!/#]code") and msg.reply_to_message then
        sendMessage(msg.chat.id, '`'..msg.reply_to_message.text..'`',true,nil,true)
   return
end
   if msg.text:match("^[!/#]link ") and msg.reply_to_message then
        local matches = { string.match(msg.text, "^[!/#]link (.*)") }
        sendMessage(msg.chat.id, '['..msg.reply_to_message.text..']('..matches[1]..')',true,nil,true)
   return
end

   if msg.text_lower:match('^[!/#]bold (.*)') then
        local matches = { string.match(msg.text, "^[!/#]bold (.*)") }
    	local text = '*'..matches[1]..'*'
        sendMessage(msg.chat.id, text, true, false, true)
    return
end
   if msg.text_lower:match('^[!/#]italic (.*)') then
        local matches = { string.match(msg.text, "^[!/#]italic (.*)") }
    	local text = '_'..matches[1]..'_'
        sendMessage(msg.chat.id, text, true, false, true)
    return
end
   if msg.text_lower:match('^[!/#]code (.*)') then
        local matches = { string.match(msg.text, "^[!/#]code (.*)") }
    	local text = '`'..matches[1]..'`'
        sendMessage(msg.chat.id, text, true, false, true)
    return
end
   if msg.text:match("^[!/#]link (.*) (.*)") then
        local matches = { string.match(msg.text, "^[!/#]link (.*) (.*)") }
        local text = '['..matches[2]..']('..matches[1]..')'
        sendMessage(msg.chat.id, text, true, false, true)
    return
end 

return {

patterns = {
    "^[!/#]bold",
    "^[!/#]italic",
    "^[!/#]code",
    "^[!/#]link (.*)",
		"^[!/#]bold (.*)",
		"^[!/#]italic (.*)",
		"^[!/#]code (.*)",
		"^[!/#]link (.*) (.*)",
		}, 
  action = action,
  triggers = triggers,
  doc = doc,
  command = command
}
