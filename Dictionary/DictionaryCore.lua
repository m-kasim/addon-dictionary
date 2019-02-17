-- Main logic

-- Chat commands which are accepted
SLASH_DICTIONARY1 = "/xx"
SLASH_DICTIONARY2 = "/dictionary"
SLASH_DICTIONARY3 = "/gg"
SLASH_DICTIONARY2 = "/gre"

-- Chat commands handler
SlashCmdList["DICTIONARY"] = function(msg)
   dictionary_parse()
end

-- Display words from the dictionary
function dictionary_parse()
    dictionary_first_word = 1
    dictionary_last_word = 1838

    number = math.random(dictionary_first_word, dictionary_last_word)
    DEFAULT_CHAT_FRAME:AddMessage("-----------------------------------[ DICTIONARY ]-----------------------------------");
    DEFAULT_CHAT_FRAME:AddMessage("[Word]: \t \t \t \t \t \t \t \t \t \t  |cffffda1c" .. dictionary[number].word_english);
    DEFAULT_CHAT_FRAME:AddMessage("[Bulgarian]: \t \t \t \t |c7c7cff1c" .. dictionary[number].word_bulgarian);
    DEFAULT_CHAT_FRAME:AddMessage("[Description]: \t \t |c0000c53e" .. dictionary[number].word_description);
    DEFAULT_CHAT_FRAME:AddMessage("[Example]: \t \t \t \t \t \t |c9292ccff" .. dictionary[number].word_sentence);
    DEFAULT_CHAT_FRAME:AddMessage("----------------------------------------------------------------------------------------");
end
