local A, L = ...

local rLib = L.rLib

if L.C.bagPosition then
    local offsetX, offsetY = unpack(L.C.bagPosition)

    ContainerFrame6:SetPoint("TOPRIGHT", UIParent, "RIGHT", offsetX-5, offsetY)
    ContainerFrame6.SetPoint = function() end

    ContainerFrameCombinedBags:SetPoint("TOPLEFT", UIParent, "RIGHT", offsetX+5, offsetY)
    ContainerFrameCombinedBags.SetPoint = function() end

    ContainerFrame1:SetPoint("TOPLEFT", UIParent, "RIGHT", offsetX+5, offsetY)
    ContainerFrame1.SetPoint = function() end

    ContainerFrame2:SetPoint("TOPLEFT", ContainerFrame1, "TOPRIGHT", 10, 0)
    ContainerFrame2.SetPoint = function() end

    ContainerFrame3:SetPoint("TOPLEFT", ContainerFrame2, "TOPRIGHT", 10, 0)
    ContainerFrame3.SetPoint = function() end

    ContainerFrame4:SetPoint("TOPLEFT", ContainerFrame3, "TOPRIGHT", 10, 0)
    ContainerFrame4.SetPoint = function() end

    ContainerFrame5:SetPoint("TOPLEFT", ContainerFrame4, "TOPRIGHT", 10, 0)
    ContainerFrame5.SetPoint = function() end
end

if L.C.bankPosition then
    BankFrame:SetPoint(unpack(L.C.bankPosition))
    BankFrame.SetPoint = function() end

    ContainerFrame7:SetPoint("TOPLEFT", BankFrame, "TOPRIGHT", 10, 0)
    ContainerFrame7.SetPoint = function() end

    ContainerFrame8:SetPoint("TOPLEFT", ContainerFrame7, "TOPRIGHT", 10, 0)
    ContainerFrame8.SetPoint = function() end

    ContainerFrame9:SetPoint("TOPLEFT", ContainerFrame8, "TOPRIGHT", 10, 0)
    ContainerFrame9.SetPoint = function() end

    ContainerFrame10:SetPoint("TOPLEFT", ContainerFrame7, "BOTTOMLEFT", 0, -10)
    ContainerFrame10.SetPoint = function() end

    ContainerFrame11:SetPoint("TOPLEFT", ContainerFrame8, "BOTTOMLEFT", 0, -10)
    ContainerFrame11.SetPoint = function() end

    ContainerFrame12:SetPoint("TOPLEFT", ContainerFrame9, "BOTTOMLEFT", 0, -10)
    ContainerFrame12.SetPoint = function() end

    ContainerFrame13:SetPoint("LEFT", ContainerFrame9, "BOTTOMRIGHT", 10, -5)
    ContainerFrame13.SetPoint = function() end
end

if L.C.styleBag then
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

    ContainerFrame1.NineSlice.TopLeftCorner:SetAlpha(0)
    ContainerFrame1.NineSlice.TopEdge:SetAlpha(0)
    ContainerFrame1.NineSlice.TopRightCorner:SetAlpha(0)
    ContainerFrame1.NineSlice.RightEdge:SetAlpha(0)
    ContainerFrame1.NineSlice.BottomRightCorner:SetAlpha(0)
    ContainerFrame1.NineSlice.BottomEdge:SetAlpha(0)
    ContainerFrame1.NineSlice.BottomLeftCorner:SetAlpha(0)
    ContainerFrame1.NineSlice.LeftEdge:SetAlpha(0)
    ContainerFrame1.TitleContainer:Hide()
    ContainerFrame1Portrait:Hide()
    ContainerFrame1PortraitButton:Hide()
    ContainerFrame1.CloseButton:Hide(0)

    ContainerFrame2.NineSlice.TopLeftCorner:SetAlpha(0)
    ContainerFrame2.NineSlice.TopEdge:SetAlpha(0)
    ContainerFrame2.NineSlice.TopRightCorner:SetAlpha(0)
    ContainerFrame2.NineSlice.RightEdge:SetAlpha(0)
    ContainerFrame2.NineSlice.BottomRightCorner:SetAlpha(0)
    ContainerFrame2.NineSlice.BottomEdge:SetAlpha(0)
    ContainerFrame2.NineSlice.BottomLeftCorner:SetAlpha(0)
    ContainerFrame2.NineSlice.LeftEdge:SetAlpha(0)
    ContainerFrame2.TitleContainer:Hide()
    ContainerFrame2Portrait:Hide()
    ContainerFrame2PortraitButton:Hide()
    ContainerFrame2.CloseButton:Hide(0)

    ContainerFrame3.NineSlice.TopLeftCorner:SetAlpha(0)
    ContainerFrame3.NineSlice.TopEdge:SetAlpha(0)
    ContainerFrame3.NineSlice.TopRightCorner:SetAlpha(0)
    ContainerFrame3.NineSlice.RightEdge:SetAlpha(0)
    ContainerFrame3.NineSlice.BottomRightCorner:SetAlpha(0)
    ContainerFrame3.NineSlice.BottomEdge:SetAlpha(0)
    ContainerFrame3.NineSlice.BottomLeftCorner:SetAlpha(0)
    ContainerFrame3.NineSlice.LeftEdge:SetAlpha(0)
    ContainerFrame3.TitleContainer:Hide()
    ContainerFrame3Portrait:Hide()
    ContainerFrame3PortraitButton:Hide()
    ContainerFrame3.CloseButton:Hide(0)

    ContainerFrame4.NineSlice.TopLeftCorner:SetAlpha(0)
    ContainerFrame4.NineSlice.TopEdge:SetAlpha(0)
    ContainerFrame4.NineSlice.TopRightCorner:SetAlpha(0)
    ContainerFrame4.NineSlice.RightEdge:SetAlpha(0)
    ContainerFrame4.NineSlice.BottomRightCorner:SetAlpha(0)
    ContainerFrame4.NineSlice.BottomEdge:SetAlpha(0)
    ContainerFrame4.NineSlice.BottomLeftCorner:SetAlpha(0)
    ContainerFrame4.NineSlice.LeftEdge:SetAlpha(0)
    ContainerFrame4.TitleContainer:Hide()
    ContainerFrame4Portrait:Hide()
    ContainerFrame4PortraitButton:Hide()
    ContainerFrame4.CloseButton:Hide(0)

    ContainerFrame5.NineSlice.TopLeftCorner:SetAlpha(0)
    ContainerFrame5.NineSlice.TopEdge:SetAlpha(0)
    ContainerFrame5.NineSlice.TopRightCorner:SetAlpha(0)
    ContainerFrame5.NineSlice.RightEdge:SetAlpha(0)
    ContainerFrame5.NineSlice.BottomRightCorner:SetAlpha(0)
    ContainerFrame5.NineSlice.BottomEdge:SetAlpha(0)
    ContainerFrame5.NineSlice.BottomLeftCorner:SetAlpha(0)
    ContainerFrame5.NineSlice.LeftEdge:SetAlpha(0)
    ContainerFrame5.TitleContainer:Hide()
    ContainerFrame5Portrait:Hide()
    ContainerFrame5PortraitButton:Hide()
    ContainerFrame5.CloseButton:Hide(0)

    ContainerFrame6.NineSlice.TopLeftCorner:SetAlpha(0)
    ContainerFrame6.NineSlice.TopEdge:SetAlpha(0)
    ContainerFrame6.NineSlice.TopRightCorner:SetAlpha(0)
    ContainerFrame6.NineSlice.RightEdge:SetAlpha(0)
    ContainerFrame6.NineSlice.BottomRightCorner:SetAlpha(0)
    ContainerFrame6.NineSlice.BottomEdge:SetAlpha(0)
    ContainerFrame6.NineSlice.BottomLeftCorner:SetAlpha(0)
    ContainerFrame6.NineSlice.LeftEdge:SetAlpha(0)
    ContainerFrame6.TitleContainer:Hide()
    ContainerFrame6Portrait:Hide()
    ContainerFrame6PortraitButton:Hide()
    ContainerFrame6.CloseButton:Hide(0)
end

if L.C.styleBank then
    BankFrameTab1:Hide()
    BankFrameTab2:Hide()

    BankFrame.NineSlice.TopLeftCorner:SetAlpha(0)
    BankFrame.NineSlice.TopEdge:SetAlpha(0)
    BankFrame.NineSlice.TopRightCorner:SetAlpha(0)
    BankFrame.NineSlice.RightEdge:SetAlpha(0)
    BankFrame.NineSlice.BottomRightCorner:SetAlpha(0)
    BankFrame.NineSlice.BottomEdge:SetAlpha(0)
    BankFrame.NineSlice.BottomLeftCorner:SetAlpha(0)
    BankFrame.NineSlice.LeftEdge:SetAlpha(0)
    BankFrame.TitleContainer:Hide()
    BankFrameMoneyFrame:Hide()
    BankFrameMoneyFrameBorder:Hide()
    BankFramePortrait:Hide()
    BankFrame.CloseButton:Hide(0)

    ContainerFrame7.NineSlice.TopLeftCorner:SetAlpha(0)
    ContainerFrame7.NineSlice.TopEdge:SetAlpha(0)
    ContainerFrame7.NineSlice.TopRightCorner:SetAlpha(0)
    ContainerFrame7.NineSlice.RightEdge:SetAlpha(0)
    ContainerFrame7.NineSlice.BottomRightCorner:SetAlpha(0)
    ContainerFrame7.NineSlice.BottomEdge:SetAlpha(0)
    ContainerFrame7.NineSlice.BottomLeftCorner:SetAlpha(0)
    ContainerFrame7.NineSlice.LeftEdge:SetAlpha(0)
    ContainerFrame7.TitleContainer:Hide()
    ContainerFrame7Portrait:Hide()
    ContainerFrame7PortraitButton:Hide()
    ContainerFrame7.CloseButton:Hide(0)

    ContainerFrame8.NineSlice.TopLeftCorner:SetAlpha(0)
    ContainerFrame8.NineSlice.TopEdge:SetAlpha(0)
    ContainerFrame8.NineSlice.TopRightCorner:SetAlpha(0)
    ContainerFrame8.NineSlice.RightEdge:SetAlpha(0)
    ContainerFrame8.NineSlice.BottomRightCorner:SetAlpha(0)
    ContainerFrame8.NineSlice.BottomEdge:SetAlpha(0)
    ContainerFrame8.NineSlice.BottomLeftCorner:SetAlpha(0)
    ContainerFrame8.NineSlice.LeftEdge:SetAlpha(0)
    ContainerFrame8.TitleContainer:Hide()
    ContainerFrame8Portrait:Hide()
    ContainerFrame8PortraitButton:Hide()
    ContainerFrame8.CloseButton:Hide(0)

    ContainerFrame9.NineSlice.TopLeftCorner:SetAlpha(0)
    ContainerFrame9.NineSlice.TopEdge:SetAlpha(0)
    ContainerFrame9.NineSlice.TopRightCorner:SetAlpha(0)
    ContainerFrame9.NineSlice.RightEdge:SetAlpha(0)
    ContainerFrame9.NineSlice.BottomRightCorner:SetAlpha(0)
    ContainerFrame9.NineSlice.BottomEdge:SetAlpha(0)
    ContainerFrame9.NineSlice.BottomLeftCorner:SetAlpha(0)
    ContainerFrame9.NineSlice.LeftEdge:SetAlpha(0)
    ContainerFrame9.TitleContainer:Hide()
    ContainerFrame9Portrait:Hide()
    ContainerFrame9PortraitButton:Hide()
    ContainerFrame9.CloseButton:Hide(0)

    ContainerFrame10.NineSlice.TopLeftCorner:SetAlpha(0)
    ContainerFrame10.NineSlice.TopEdge:SetAlpha(0)
    ContainerFrame10.NineSlice.TopRightCorner:SetAlpha(0)
    ContainerFrame10.NineSlice.RightEdge:SetAlpha(0)
    ContainerFrame10.NineSlice.BottomRightCorner:SetAlpha(0)
    ContainerFrame10.NineSlice.BottomEdge:SetAlpha(0)
    ContainerFrame10.NineSlice.BottomLeftCorner:SetAlpha(0)
    ContainerFrame10.NineSlice.LeftEdge:SetAlpha(0)
    ContainerFrame10.TitleContainer:Hide()
    ContainerFrame10Portrait:Hide()
    ContainerFrame10PortraitButton:Hide()
    ContainerFrame10.CloseButton:Hide(0)

    ContainerFrame11.NineSlice.TopLeftCorner:SetAlpha(0)
    ContainerFrame11.NineSlice.TopEdge:SetAlpha(0)
    ContainerFrame11.NineSlice.TopRightCorner:SetAlpha(0)
    ContainerFrame11.NineSlice.RightEdge:SetAlpha(0)
    ContainerFrame11.NineSlice.BottomRightCorner:SetAlpha(0)
    ContainerFrame11.NineSlice.BottomEdge:SetAlpha(0)
    ContainerFrame11.NineSlice.BottomLeftCorner:SetAlpha(0)
    ContainerFrame11.NineSlice.LeftEdge:SetAlpha(0)
    ContainerFrame11.TitleContainer:Hide()
    ContainerFrame11Portrait:Hide()
    ContainerFrame11PortraitButton:Hide()
    ContainerFrame11.CloseButton:Hide(0)

    ContainerFrame12.NineSlice.TopLeftCorner:SetAlpha(0)
    ContainerFrame12.NineSlice.TopEdge:SetAlpha(0)
    ContainerFrame12.NineSlice.TopRightCorner:SetAlpha(0)
    ContainerFrame12.NineSlice.RightEdge:SetAlpha(0)
    ContainerFrame12.NineSlice.BottomRightCorner:SetAlpha(0)
    ContainerFrame12.NineSlice.BottomEdge:SetAlpha(0)
    ContainerFrame12.NineSlice.BottomLeftCorner:SetAlpha(0)
    ContainerFrame12.NineSlice.LeftEdge:SetAlpha(0)
    ContainerFrame12.TitleContainer:Hide()
    ContainerFrame12Portrait:Hide()
    ContainerFrame12PortraitButton:Hide()
    ContainerFrame12.CloseButton:Hide(0)

    ContainerFrame13.NineSlice.TopLeftCorner:SetAlpha(0)
    ContainerFrame13.NineSlice.TopEdge:SetAlpha(0)
    ContainerFrame13.NineSlice.TopRightCorner:SetAlpha(0)
    ContainerFrame13.NineSlice.RightEdge:SetAlpha(0)
    ContainerFrame13.NineSlice.BottomRightCorner:SetAlpha(0)
    ContainerFrame13.NineSlice.BottomEdge:SetAlpha(0)
    ContainerFrame13.NineSlice.BottomLeftCorner:SetAlpha(0)
    ContainerFrame13.NineSlice.LeftEdge:SetAlpha(0)
    ContainerFrame13.TitleContainer:Hide()
    ContainerFrame13Portrait:Hide()
    ContainerFrame13PortraitButton:Hide()
    ContainerFrame13.CloseButton:Hide(0)
end