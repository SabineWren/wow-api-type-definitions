### TODO Copyright
Data taken from the fandom wiki, including some of the descriptions, which are likely copyrightable. This repo should stay private until resolving the copyright semantics. Alternatively, replace all the code examples.

### Usage
- Install [sumneko.lua](https://luals.github.io/) language server extension in your IDE of choice
- Vendor this repo in your project (I recommend adding to .gitignore).
- Configure `.luarc.json`, including path to root directory of these type definitions.
```
{
   "runtime.version": "Lua 5.1",
   "type.inferParamType": true,
   "workspace.library": [YOUR_PATH_HERE]
}
```

### Lambdas
In addition to type declarations, this library provides `Lambda.lua`, which wraps methods with function call syntax. It's inspired by [FSharp](https://devblogs.microsoft.com/dotnet/announcing-fsharp-8/#f-language-changes), which copied Elm.
```
-- Blizzard way (imperative)
local totalWidth = 0
for _k,v in frames do
   totalWidth += f:GetWidth()
end

-- Verbose functional approach
local totalWidth =
   Array.MapReduce(frames, function(r) return r:GetWidth() end, function(a, b) return a + b end, 0)

-- Shorthand
local L = require "Lib/All.lua"
local W = require "wow-api-type-definitions/Lambda.lua"

local totalWidth =
   L.Array.MapReduce(frames, W.Region._GetWidth, L.Add, 0)
```
