--[[
🔱➖➖➖➖➖➖➖➖➖➖➖➖➖➖🔱
#:[[
#For info file
#Developer :  
#JOker < @lua_3 > 
#JoZef < @jozef3 >
#our channel: @Smart_Team
#File type : (اضافة مطور)
🔱➖➖➖➖➖➖➖➖➖➖➖➖➖➖🔱
—]]
function reload_plugins( ) 
plugins = {}
load_plugins()
end
function run(msg, matches)
if tonumber (msg.from.id) == OUR ID then--expample 123456789
if matches[1]:lower() == "setsudo" then
table.insert(_config.sudo_users, tonumber(matches[2]))
print(matches[2]..' added to sudo users')
save_config()
reload_plugins(true)
return matches[2]..' added to sudo users'
elseif matches[1]:lower() == "remsudo" then
table.remove(_config.sudo_users, tonumber(matches[2]))
print(matches[2]..' removed from sudo users')
save_config()
reload_plugins(true)
return matches[2]..' removed from sudo users'
end
end
end
return {
patterns = {
"^[!/#]([Ss]etsudo) (%d+)$",
"^[!/#]([Rr]emsudo) (%d+)$"
},
run = run
}
