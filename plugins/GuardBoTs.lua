local function run(msg, matches)
local GuardBoTs = [[GuardBoTs Version : 1.0
BoT Channel : @GuardBoTs_Ch
BoT Sudo : @Reza_PoKer
BoT Sudo Report : @Reza_Developer_BoT
BoT Pv : @GuardBoTs
BoT Github : https://github.com/rezasoft/GuardBoTs]]
return GuardBoTs
end
return {
patterns = {
"^[!#/][Gg][Uu][Aa][Rr][Dd][Bb][Oo][Tt][Ss]$"
}, 
run = run
}
