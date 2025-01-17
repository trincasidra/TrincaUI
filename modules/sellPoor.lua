-- rSellPoor: core
-- zork, 2018

-----------------------------
-- Variables
-----------------------------

local A, L = ...

-----------------------------
-- Functions
-----------------------------

local stop = true
local list = {}

local function SellGray()
    if stop then return end
    for bag = 0, 4 do
        for slot = 0, C_Container.GetContainerNumSlots(bag) do
            if stop then return end
            local link = C_Container.GetContainerItemLink(bag, slot)
            if link and select(3, C_Item.GetItemInfo(link)) == 0 and not list["b" .. bag .. "s" .. slot] then
                print("Selling", link)
                list["b" .. bag .. "s" .. slot] = true
                C_Container.UseContainerItem(bag, slot)
                C_Timer.After(0.2, SellGray)
                return
            end
        end
    end
end


local function OnEvent(self, event)
    if event == "MERCHANT_SHOW" then
        stop = false
        wipe(list)
        SellGray()
    elseif event == "MERCHANT_CLOSED" then
        stop = true
    end
end

-----------------------------
-- Init
-----------------------------

--eventHandler
local eventHandler = CreateFrame("Frame")
eventHandler:RegisterEvent("MERCHANT_SHOW")
eventHandler:RegisterEvent("MERCHANT_CLOSED")
eventHandler:SetScript("OnEvent", OnEvent)
