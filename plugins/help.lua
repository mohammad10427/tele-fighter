local function run(msg, matches)
local help = [[〰〰〰〰〰〰〰〰〰
دریافت راهنمای سرگرمی
/help fun
〰〰〰〰〰〰〰〰〰
دریافت راهنمای مدیریت گروه
/helps
〰〰〰〰〰〰〰〰〰〰
BoT Version : 1.0
BoT Channel : @GuardBoTs_Ch]]
return help
end
return {
patterns = {
"^[!#/][Hh][Ee][Ll][Pp]$"
}, 
run = run
}
