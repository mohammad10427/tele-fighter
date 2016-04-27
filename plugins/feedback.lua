-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\

do
 function run(msg, matches)
 
 local fuse = '✉️ پیامی جدید : \n\n🆔 آیدی : ' .. msg.from.id .. '\n\n👤 نام : ' .. msg.from.print_name ..'\n\n🔢 یوزرنیم : @' .. msg.from.username .. '\n\n📬 پیام :\n' .. matches[1] 
 local fuses = '!printf user#id' .. msg.from.id
 
 
   local text = matches[1]
   local user = "user#id"..179071599
   --like : local chat = "channel#id"..12345678
   
  local sends = send_msg(user, fuse, ok_cb, false)
    send_document(get_receiver(msg), "/root/Avira/logo/sent.webp", ok_cb, false)
  return 'پیام شما ارسال شد با تشکر'
 
 end
 end
 return {
  
  description = "Feedback",
 
  usage = "!feedback message",
  patterns = {
  "^[!#/][Ff]eedback (.*)$"
 
  },
  run = run
 }

-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\
