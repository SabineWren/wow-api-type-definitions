--- Distance from edges the background will be drawn. e.x. use higher values for thicker edges.
---@alias Insets { right: number, top: number, bottom: number, left: number }

---@class Backdrop
---@field bgFile? string Texture path for background.
---@field edgeFile? string Texture path for edges.
---@field tile? boolean Tile if true else Stretch.
---@field tileSize? number If tiling, size of each tiled copy of bgFile.
---@field edgeSize? number Size of the edgefile. i.e. border thickness and corner size.
---@field insets? Insets
