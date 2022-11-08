local A, L = ...

local rLib = L.rLib

if L.C.styleRollHistory then
    ContainerFrameCombinedBags.NineSlice.TopLeftCorner:SetAlpha(0)
    ContainerFrameCombinedBags.NineSlice.TopEdge:SetAlpha(0)
    ContainerFrameCombinedBags.NineSlice.TopRightCorner:SetAlpha(0)
    ContainerFrameCombinedBags.NineSlice.RightEdge:SetAlpha(0)
    ContainerFrameCombinedBags.NineSlice.BottomRightCorner:SetAlpha(0)
    ContainerFrameCombinedBags.NineSlice.BottomEdge:SetAlpha(0)
    ContainerFrameCombinedBags.NineSlice.BottomLeftCorner:SetAlpha(0)
    ContainerFrameCombinedBags.NineSlice.LeftEdge:SetAlpha(0)
    ContainerFrameCombinedBags.TitleContainer:Hide()
    ContainerFrameCombinedBags.MoneyFrame.Border:SetAlpha(0)
    ContainerFrameCombinedBagsPortrait:Hide()
    ContainerFrameCombinedBagsPortraitButton:Hide()
    ContainerFrameCombinedBags.CloseButton:Hide(0)
end
