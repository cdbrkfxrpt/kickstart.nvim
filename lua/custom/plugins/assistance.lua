local function on_ai_enabled_host()
  local valid_hosts = { 'wntrmt', 'nrmncr' }

  local f = io.popen 'hostname 2>/dev/null'
  if f == nil then
    print 'Failed to get hostname, as popen failed'
    return false
  end

  local hostname = f:read '*a'
  if hostname == nil or hostname == '' then
    print 'Failed to read hostname, which is nil or empty'
    return false
  end
  io.close(f)

  hostname = hostname:gsub('\n', '')
  for _, valid_host in ipairs(valid_hosts) do
    if string.match(hostname, valid_host) then
      print('host "' .. hostname .. '" is cleared to use AI assistant; loading...')
      return true
    end
  end

  print('hostname "' .. hostname .. '" NOT cleared to use AI assistant')
  return false
end

return {
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter',
    -- only load AI assistant for specific hosts
    cond = on_ai_enabled_host,
  },
}
