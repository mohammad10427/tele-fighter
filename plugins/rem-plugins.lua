local function run(msg, matches)
    if matches[1] == "rem" and is_sudo(msg) then
text = io.popen("cd plugins && rm "..matches[2]..".lua")
return "پلاگین "..matches[2].." با موفقیت حذف شد"
end 
end

return { 
patterns = {
 
'^[!/](rem) (.*)$' 
},
run = run,
}
