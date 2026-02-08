---@meta

NUM_BROWSE_TO_DISPLAY = 8
NUM_AUCTION_ITEMS_PER_PAGE = 50
NUM_FILTERS_TO_DISPLAY = 15
BROWSE_FILTER_HEIGHT = 20
NUM_BIDS_TO_DISPLAY = 9
NUM_AUCTIONS_TO_DISPLAY = 9
AUCTIONS_BUTTON_HEIGHT = 37
CLASS_FILTERS = {  }
OPEN_FILTER_LIST = {  }
AUCTION_TIMER_UPDATE_DELAY = 0.3

---@return nil
function AuctionFrame_OnLoad() end

---@return nil
function AuctionFrame_OnShow() end

---@return nil
function AuctionFrame_OnEvent() end

---@param index any (type not inferred)
---@return nil
function AuctionFrameTab_OnClick(index) end

---@return nil
function AuctionFrameBrowse_OnLoad() end

---@return nil
function AuctionFrameBrowse_OnShow() end

---@return nil
function AuctionFrameBrowse_OnEvent() end

---@param button any (type not inferred)
---@return nil
function BrowseButton_OnClick(button) end

---@return nil
function BrowseDropDown_OnLoad() end

---@return nil
function BrowseDropDown_Initialize() end

---@return nil
function BrowseDropDown_OnClick() end

---@param ... any (type not inferred)
---@return nil
function AuctionFrameBrowse_InitClasses(...) end

---@param page any (type not inferred)
---@return nil
function AuctionFrameBrowse_Search(page) end

---@return nil
function AuctionFrameFilters_Update() end

---@return nil
function AuctionFrameFilters_UpdateClasses() end

---@param ... any (type not inferred)
---@return nil
function AuctionFrameFilters_UpdateSubClasses(...) end

---@param ... any (type not inferred)
---@return nil
function AuctionFrameFilters_UpdateInvTypes(...) end

---@param button any (type not inferred)
---@param type any (type not inferred)
---@param text any (type not inferred)
---@param isLast any (type not inferred)
---@return nil
function FilterButton_SetType(button, type, text, isLast) end

---@return nil
function AuctionFrameFilter_OnClick() end

---@return nil
function AuctionFrameBrowse_Update() end

---@return nil
function AuctionFrameBid_OnLoad() end

---@return nil
function AuctionFrameBid_OnEvent() end

---@return nil
function AuctionFrameBid_OnShow() end

---@return nil
function AuctionFrameBid_Update() end

---@param button any (type not inferred)
---@return nil
function BidButton_OnClick(button) end

---@return nil
function AuctionFrameAuctions_OnLoad() end

---@return nil
function AuctionFrameAuctions_OnEvent() end

---@return nil
function AuctionFrameAuctions_OnShow() end

---@return nil
function AuctionFrameAuctions_Update() end

---@param button any (type not inferred)
---@return nil
function AuctionsButton_OnClick(button) end

---@param index any (type not inferred)
---@return nil
function AuctionsRadioButton_OnClick(index) end

---@return nil
function UpdateDeposit() end

---@return nil
function AuctionSellItemButton_OnEvent() end

---@return nil
function AuctionsFrameAuctions_ValidateAuction() end

---@param id any (type not inferred)
---@return any x0 (type not inferred)
---@nodiscard
function AuctionFrame_GetTimeLeftText(id) end

---@param id any (type not inferred)
---@return any x0 (type not inferred)
---@nodiscard
function AuctionFrame_GetTimeLeftTooltipText(id) end

---@param type any (type not inferred)
---@param index any (type not inferred)
---@return nil
function AuctionFrameItem_OnEnter(type, index) end

---@param button any (type not inferred)
---@param type any (type not inferred)
---@param sort any (type not inferred)
---@return nil
function SortButton_UpdateArrow(button, type, sort) end