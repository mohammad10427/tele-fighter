-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\


local function musiclink(msg, musicid)
	local value = redis:hget('music:'..msg.to.id, musicid)
	if not value then
		return
	else
		value = value..'\n\n'
		return value
	end
end

------------------ Seconds To Minutes alg ------------------
function sectomin (Sec)
if (tonumber(Sec) == nil) or (tonumber(Sec) == 0) then
return "00:00"
else
Seconds = math.floor(tonumber(Sec))
if Seconds < 1 then Seconds = 1 end
Minutes = math.floor(Seconds / 60)
Seconds = math.floor(Seconds - (Minutes * 60))
if Seconds < 10 then
Seconds = "0"..Seconds
end
if Minutes < 10 then
Minutes = "0"..Minutes
end
return Minutes..':'..Seconds
end
end

function run(msg, matches)
	if string.match(msg.text, '[\216-\219][\128-\191]') then
		return send_large_msg(get_receiver(msg), 'لطفا نام آهنگ را به انگلیسی وارد نمایید')
	end
	if matches[1]:lower() == "dl" then
		local value = redis:hget('music:'..msg.to.id, matches[2])
		if not value then
			return 'آهنگ مورد نظر پیدا نشد.'
		else
			value = value..'\n\n'
			return value
		end
		return
	end
	
	local url = http.request("http://api.gpmod.ir/music.search/?q="..URL.escape(matches[2]).."&count=30&sort=2")
	
	local jdat = json:decode(url)
	local text , time , num = ''
	local hash = 'music:'..msg.to.id
	redis:del(hash)
	if #jdat.response < 2 then return "No result found." end
		for i = 2, #jdat.response do
			if 900 > jdat.response[i].duration then
			num = i - 1
			time = sectomin(jdat.response[i].duration)
			text = text..num..'- Artist: '.. jdat.response[i].artist .. ' | '..time..'\n🎧 نام آهنگ : '..jdat.response[i].title..'\n\n'
			redis:hset(hash, num, 'Artist: '.. jdat.response[i].artist .. '\n🎧 نام آهنگ : '..jdat.response[i].title..' | '..time..'\n\n'.."GPMod.ir/dl.php?q="..jdat.response[i].owner_id.."_"..jdat.response[i].aid)
			end
		end
		text = text..'برای دریافت لینک دانلود آهنگ از دستور زیر استفاده نماییید :\n!dl (شماره آهنگ)'
	return text
end

return {

patterns = {
	"^[/!]([Mm][Uu][Ss][Ii][Cc]) (.*)$",
	"^[/!]([dD][Ll]) (.*)$"
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
