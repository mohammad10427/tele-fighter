local function run(msg, matches)
local id = "〰〰〰〰〰〰〰〰〰\nآیدی شما : "..msg.from.id.."\n〰〰〰〰〰〰〰〰〰\nآیدی گروه : "..msg.to.id.."\n〰〰〰〰〰〰〰〰〰〰BoT Version : 1.0\nBoT Channel : @GuardBoTs_Ch"
return id
end
return {
patterns = {
"^[!#/][Ii][Dd]$"
}, 
run = run
}
