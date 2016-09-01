do

local function run(msg, matches)
  if matches[1] == "send" then
    local file = matches[2]
    if is_sudo(msg) then
      local receiver = get_receiver(msg)
      send_document(receiver, "./plugins/"..file..".lua", ok_cb, false)
    end
  end
end

return {
  patterns = {
  "^[!/]([Ss][Ee][Nn][Dd]) (.*)$"
  "^([Ss][Ee][Nn][Dd]) (.*)$"

  },
  run = run
}
end