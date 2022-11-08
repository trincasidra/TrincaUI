local A, L = ...

local rLib = L.rLib

if L.C.styleRollHistory then
    GameTooltip.NineSlice.TopLeftCorner:SetAlpha(0)
    GameTooltip.NineSlice.TopEdge:SetAlpha(0)
    GameTooltip.NineSlice.TopRightCorner:SetAlpha(0)
    GameTooltip.NineSlice.RightEdge:SetAlpha(0)
    GameTooltip.NineSlice.BottomRightCorner:SetAlpha(0)
    GameTooltip.NineSlice.BottomEdge:SetAlpha(0)
    GameTooltip.NineSlice.BottomLeftCorner:SetAlpha(0)
    GameTooltip.NineSlice.LeftEdge:SetAlpha(0)
    GameTooltipStatusBar:SetAlpha(0)
end
