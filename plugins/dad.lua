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
local reply_id = msg['id']
local text = 'سلام بابایی جونم 😍'
if matches[1] == 'سلام' then
    if is_sudo(msg) then
reply_msg(reply_id, text, ok_cb, false)
end
end 
end

do
function run(msg, mathches)
local relpy_id = msg['id']
local text = 'سلام مدیر اصلی گروه 😘'
if mathches[1] == 'سلام' then
    if is_owner(msg) then
        reply_msg(reply_id, text, ok_cb, false)
    end
end
end

do
function run(msg, mathches)
local relpy_id = msg['id']
local text = 'سلام معاون گروه 😘'
if mathches[1] == 'سلام' then
    if is_momod(msg) then
        reply_msg(reply_id, text, ok_cb, false)
    end
end
end

do
function run(msg, mathches)
local relpy_id = msg['id']
local text = 'سلام'
if mathches[1] == 'سلام' then
    if is_member(msg) then
        reply_msg(reply_id, text, ok_cb, false)
    end
end
end
return {
patterns = {
    "^سلام$",
},
run = run
}

end

-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\
