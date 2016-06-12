local function run(msg, matches)
local nerkh = [[قیمت سوپرگروه : 5 هزار تومن
قیمت ادمین شدن : 10 هزار تومن
قیمت سودو شدن : 15 هزار تومن
قیمت سورس اصلی ربات : 20 هزار تومن
---------------------------
قیمت ها به تومن میباشد
پول به صورت کارت به کارت دریافت میشود
اگر ناراضی بودید میتوانید پول خود را دریافت کنید
خرید گروه : @Reza_Poker
ریپورت ها : @Reza_Developer_BoT
---------------------------
BoT Version : 1.0
BoT Channel : @GuardBoTs_Ch]]
return nerkh
end
return {
patterns = {
"^[!#/][Nn][Ee][Rr][Kk][Hh]$"
}, 
run = run
}
