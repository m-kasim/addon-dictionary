-- DATE = "09.02.2018"
-- AUTHOR_NAME = "Murad Kasim"
-- AUTHOR_EMAIL = "mkasim@uni-sofia.bg"
-- Copyright (c) Murad Kasim. 2018

VERSION = "0.8.1"

-- Create a frame
local DictionaryFrame = CreateFrame("FRAME", "DictionaryFrame");

-- Start listening for a particular event
DictionaryFrame:RegisterEvent("ADDON_LOADED");

-- Event handler
local function eventHandler(self, event, ...)

    if arg1 == "Dictionary" then
        DEFAULT_CHAT_FRAME:AddMessage("[Dictionary] version:" .. VERSION .. " has been loaded!");
    end

end

-- Bind the event handler to the addon frame
DictionaryFrame:SetScript("OnEvent", eventHandler);
