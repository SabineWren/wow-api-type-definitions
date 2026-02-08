## Inheritance Hierarchy
```
---@class UIObject

---@class FontInstance: UIObject
---@class Region: UIObject

---@class Font: FontInstance

---@class Frame: Region
---@class LayeredRegion: Region

---@class Button: Frame
---@class ColorSelect: Frame
---@class EditBox: Frame, FontInstance
---@class GameTooltip: Frame
---@class MessageFrame: Frame, FontInstance
---@class Minimap: Frame
---@class Model: Frame
---@class ScrollingMessageFrame: Frame, FontInstance
---@class ScrollFrame: Frame
---@class SimpleHTML: Frame
---@class Slider: Frame
---@class StatusBar: Frame

---@class CheckButton: Button
---@class LootButton: Button

---@class PlayerModel: Model

---@class DressUpModel: PlayerModel
---@class TabardModel: PlayerModel

---@class FontString: LayeredRegion, FontInstance
---@class Texture: LayeredRegion
```
