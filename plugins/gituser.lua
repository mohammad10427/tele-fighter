-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\

local function run(msg, matches)
--  local eq = URL.escape(matches[1])
     url = "https://api.github.com/repos/"..matches[1].."/"..matches[2]
     jstr, res = https.request(url)
     jdat = JSON.decode(jstr)
  if jdat.message then
  return jdat.message
  else
     text = jdat.owner.login..' / '..jdat.name
  if jdat.description then
  text = text..'\n______________________________\n'..jdat.description
  end
  text = text..'\n______________________________\n💻 زبان : '..jdat.language
  ..'\n📲 تعداد ایمپورت : '..jdat.forks_count
  ..'\n♻️ تعداد تغییرات : '..jdat.open_issues
  ..'\n🌐 آدرس پروژه : '..jdat.html_url
  ..'\n\n@avirabot'
  local file = download_to_file(jdat.owner.avatar_url,'avira.webp')
  local files = download_to_file(jdat.owner.avatar_url,'avira.png')
  send_document('channel#id'..msg.to.id,file,ok_cb,false)
  send_document('channel#id'..msg.to.id,files,ok_cb,false)
  return text
end
end
return {
  patterns = {
    "^[!/#]gituser (.*)/(.*)",
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
