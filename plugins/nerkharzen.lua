-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\

local function get_arz()
  local url = 'http://exchange.nalbandan.com/api.php?action=json'
  local jstr, res = http.request(url)
  local arz = json:decode(jstr)
  return '📊 Currency , gold and coins on : '..arz.dollar.date..'\n\n〽 Per gram of 18 carat gold : '..arz.gold_per_geram.value..' Toman\n\n🌟 The new coin designs : '..arz.coin_new.value..' \n\n⭐️ Old coin designs : '..arz.coin_old.value..' Toman\n\n💵 US dollar : '..arz.dollar.value..' Toman\n\n💵 The official dollar : '..arz.dollar_rasmi.value..' Toman\n\n💶 Euro : '..arz.euro.value..' Toman\n\n💷 Pound : '..arz.pond.value..' Toman\n\n💰 Dirham : '..arz.derham.value..' Toman'
end

local function run(msg, matches)
  local text
  if matches[1] == 'arz' then
  text = get_arz() 
elseif matches[1] == 'gold' then
  text = get_gold() 
elseif matches[1] == 'coin' then
  text = get_coin() 
  end
  return text
end
return {
  description = "arz in now", 
  usage = "arz",
  patterns = {
    "^[!/#](arzen)$"
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
