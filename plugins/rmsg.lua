local function run(msg, matches)
    if matches[1] == 'del' then
    if msg.chat_id_:match("^-100") then
       if is_mod(msg) then
          if tonumber(matches[2]) > 1000 or tonumber(matches[2]) < 1 then
             return '<b>ðŸš« 1000> ØªØ¹Ø¯Ø§Ø¯ Ù¾ÛŒØ§Ù… Ù‡Ø§ÛŒ Ù‚Ø§Ø¨Ù„ Ø­Ø°Ù Ù‡Ø± Ø¯ÙØ¹Ù‡ >1 ðŸš«</b>'
             else 
             local x = 0
             local y = message_id_
             while (x < tonumber(matches[2])) do
                 y = y - 1
                 x = x + 1
                 tdcli.deleteMessages(msg.chat_id_, {[0] = y })
             end
             return '<b>'..x..'</b> <i>Ù¾ÛŒØ§Ù… Ø§Ø®ÛŒØ± Ù¾Ø§Ú© Ø´Ø¯</i>'
         end
     else return '<i>Ø´Ù…Ø§ Ø¯Ø³ØªØ±Ø³ÛŒ Ù†Ø¯Ø§Ø±ÛŒØ¯ ðŸ’©ðŸ™</i>'
         
     end
 else return 'Ø§ÛŒÙ† Ø§Ù…Ú©Ø§Ù† ÙÙ‚Ø· Ø¯Ø± <i>Ø³ÙˆÙ¾Ø± Ú¯Ø±ÙˆÙ‡</i> Ù…Ù…Ú©Ù† Ø§Ø³Øª.'
end
end

return {
    patterns = {
        '^[!#/]([Dd][Ee][Ll]) (%d*)$',
    },
    run = run
}
end
