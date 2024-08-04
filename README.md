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
