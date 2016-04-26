local function saveplug(msg, success, result)
 local avira = matches[1]
  local receiver = get_receiver(msg)
  if is_sudo(msg) and success then
    local file = '/plugins/'..avira..'.lua'
    print('File saving to:', result)
    os.rename(result, file)
    print('File moved to:', file)
  else
    print('Error downloading: '..msg.id)
    send_large_msg(receiver, 'Failed, please try again!', ok_cb, false)
  end
end
local function run(msg,matches)
    local receiver = get_receiver(msg)
    local group = msg.to.id
    if msg.reply_id then
   local name = matches[2]
      if matches[1] == "save" and matches[2] then
load_document(msg.reply_id, saveplug, msg)
        return 'در لیست پلایگن ها ذخیره شد '..name
    end
end
end
return {
  patterns = {
 "^[!/#](save) (.*)$",
  },
  run = run,
}
