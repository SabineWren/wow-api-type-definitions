### Usage
- Install [sumneko.lua](https://luals.github.io/) language server extension in your IDE of choice
- Clone this repo into your addon directory and .gitignore it.
- Configure `.luarc.json`, including path to root directory of these type definitions.
```
{
   "diagnostics.globals": [
		"arg1",
		"arg2",
		"event"
	],
   "runtime.version": "Lua 5.1",
   "type.inferParamType": true,
   "workspace.library": ["wow-api-type-definitions"]
}
```

### Attributions
This repo includes work adapted from documentation on wowpedia.fandom.com, December 2006 snapshots:
- TODO Events
- [Global Functions](https://wowpedia.fandom.com/wiki/World_of_Warcraft_API?oldid=293146)
- TODO Global Variables
- [Widgets](https://wowpedia.fandom.com/wiki/Widget_API?oldid=278403)

### Licensing
The only software license [compatible](https://creativecommons.org/share-your-work/licensing-considerations/compatible-licenses/) with this project is the GNU GPLv3. That's because Wowpedia licenses its content under [CC BY-SA 3.0](https://wowpedia.fandom.com/wiki/Wowpedia:Copyrights), which allows upgrading to CC BY-SA 4.0, and then one-way to GNU GPLv3 to complete a license [hat trick](https://opensource.stackexchange.com/a/2236).
