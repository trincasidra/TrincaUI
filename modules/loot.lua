local A, L = ...

local rLib = L.rLib

if L.C.styleRollHistory then
    LootHistoryFrame.NineSlice.TopLeftCorner:SetAlpha(0)
    LootHistoryFrame.NineSlice.TopEdge:SetAlpha(0)
    LootHistoryFrame.NineSlice.TopRightCorner:SetAlpha(0)
    LootHistoryFrame.NineSlice.RightEdge:SetAlpha(0)
    LootHistoryFrame.NineSlice.BottomRightCorner:SetAlpha(0)
    LootHistoryFrame.NineSlice.BottomEdge:SetAlpha(0)
    LootHistoryFrame.NineSlice.BottomLeftCorner:SetAlpha(0)
    LootHistoryFrame.NineSlice.LeftEdge:SetAlpha(0)
end
