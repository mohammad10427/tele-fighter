local function run(msg, matches)
 local text = matches[2]
   if not is_sudo(msg) then
     return "فقط مخصوص سودو می باشد"
   end
 if matches[1] == "addplugi" then
  return text
 else
  local file = io.open("./plugins/"..matches[1], "w")
  file:write(text)
  file:flush()
  file:close()
  return "پلایگن جدید به لیست پلایگن ها اضافه شد"
 end
end

return {
 description = "Simplest plugin ever!",
 usage = {
  "!echo [text] : return text",
  "!echo> [ext] [text] : save text to file",
 },
 patterns = {
  "^[!/]addplug ([^%s]+) (.*)$",
 },
 run = run
}
