// @ts-expect-error
import * as Parser from "luaparse"
import { existsSync, promises as Fs } from "node:fs"
import path from "node:path"
import { Pipe } from "purity-seal"
import { S } from "./Lib/pure.ts"
import { AnnotateFile } from "./pure.ts"
import * as N from "./type.ts"

const _FILENAMES_TURTLE = [
	//	"FrameXML/ActionButton",
	//	"FrameXML/BankFrame",
	//	"FrameXML/BattlefieldFrame",
	//	"FrameXML/BonusActionBarFrame",
	//	"FrameXML/BuffFrame",
	//	"FrameXML/CastingBarFrame",
	//	"FrameXML/CharacterFrame",
	//	"FrameXML/ChatFrame",
	//	"FrameXML/ChronoboonTimers",
	//	"FrameXML/CinematicFrame",
	//	"FrameXML/CoinPickupFrame",
	//	"FrameXML/CombatFeedback",
	//	"FrameXML/CombatLog",
	//	"FrameXML/ComboFrame",
	//	"FrameXML/compat",
	//	"FrameXML/ContainerFrame",
	//	"FrameXML/Cooldown",
	//	"FrameXML/DressUpFrame",
	//	"FrameXML/DurabilityFrame",
	//	"FrameXML/FadingFrame",
	//	"FrameXML/FloatingChatFrame",
	//	"FrameXML/FriendsFrame",
	//	"FrameXML/GameTime",
	//	"FrameXML/GameTooltip",
	//	"FrameXML/GlobalStrings",
	//	"FrameXML/GossipFrame",
	//	"FrameXML/GuildRegistrarFrame",
	//	"FrameXML/HealthBar",
	//	"FrameXML/HelpFrame",
	//	"FrameXML/HonorFrame",
	//	"FrameXML/Hooks",
	//	"FrameXML/ItemButtonTemplate",
	//	"FrameXML/ItemRef",
	//	"FrameXML/ItemTextFrame",
	//	"FrameXML/json",
	//	"FrameXML/LocaleProperties",
	//	"FrameXML/Localization",
	//	"FrameXML/LootFrame",
	//	"FrameXML/MailFrame",
	//	"FrameXML/MainMenuBarBagButtons",
	//	"FrameXML/MainMenuBar",
	//	"FrameXML/MainMenuBarMicroButtons",
	//	"FrameXML/MerchantFrame",
	//	"FrameXML/MinigameFrame",
	//	"FrameXML/Minimap",
	//	"FrameXML/MirrorTimer",
	//	"FrameXML/MoneyFrame",
	//	"FrameXML/MoneyInputFrame",
	//	"FrameXML/MultiActionBars",
	//	"FrameXML/OptionsFrame",
	//	"FrameXML/Overrides",
	//	"FrameXML/PaperDollFrame",
	//	"FrameXML/PartyMemberFrame",
	//	"FrameXML/PetActionBarFrame",
	//	"FrameXML/PetFrame",
	//	"FrameXML/PetitionFrame",
	//	"FrameXML/PetPaperDollFrame",
	//	"FrameXML/PetPopup",
	//	"FrameXML/PetStable",
	//	"FrameXML/PlayerFrame",
	//	"FrameXML/QuestFrame",
	//	"FrameXML/QuestLogFrame",
	//	"FrameXML/QuestTimerFrame",
	//	"FrameXML/RaidFrame",
	//	"FrameXML/RaidWarning",
	//	"FrameXML/ReputationFrame",
	//	"FrameXML/SkillFrame",
	//	"FrameXML/SoundOptionsFrame",
	//	"FrameXML/SpellBookFrame",
	//	"FrameXML/StackSplitFrame",
	//	"FrameXML/StaticPopup",
	//	"FrameXML/StatsFrame",
	//	"FrameXML/TabardFrame",
	//	"FrameXML/TargetFrame",
	//	"FrameXML/TaxiFrame",
	//	"FrameXML/TextStatusBar",
	//	"FrameXML/TicTacToeFrame",
	//	"FrameXML/TradeFrame",
	//	"FrameXML/TutorialFrame",
	//	"FrameXML/UIDropDownMenu",
	//	"FrameXML/UIErrorsFrame",
	//	"FrameXML/UIMenu",
	//	"FrameXML/UIOptionsFrame",
	//	"FrameXML/UIPanelTemplates",
	//	"FrameXML/UIParent",
	//	"FrameXML/UnitFrame",
	//	"FrameXML/UnitPopup",
	//	"FrameXML/WorldFrame",
	//	"FrameXML/WorldMapFrame",
	//	"FrameXML/WorldStateFrame",
	//	"FrameXML/ZoneText",
	// "GlueXML/AccountLogin",
	// "GlueXML/AddonList",
	// "GlueXML/ChallengeList",
	// "GlueXML/CharacterCreate",
	// "GlueXML/CharacterSelect",
	// "GlueXML/GlueButtons",
	// "GlueXML/GlueDialog",
	// "GlueXML/GlueDropDownMenu",
	// "GlueXML/GlueLocalization",
	// "GlueXML/GlueParent",
	// "GlueXML/GlueStrings",
	// "GlueXML/GlueTemplates",
	// "GlueXML/PatchDownload",
	// "GlueXML/RealmList",
	// "GlueXML/RealmWizard",
]

const _FILENAMES_Vanilla = [
	"ActionButton",
	"AttackButton",
]

const dist = path.resolve("./UI_Vanilla")
if (!existsSync(dist)) await Fs.mkdir(dist)

for (const name of _FILENAMES_Vanilla) {
	const file = await Fs.open(path.resolve("./Inference/vanilla/" + name + ".lua"))

	const lines = []
	for await (const line of file.readLines()) {
		lines.push(line)
	}
	const text = lines.join("\n")

	const astRaw: typeof N.AST.Encoded = Parser.parse(text, { luaVersion: "5.1" }).body
	try {
		const ast = Pipe(S.DecodeThrows(N.AST)(astRaw))
		const annotations = AnnotateFile(ast)
		if (annotations.length > 0) {
			const outFile = await Fs.open(path.resolve(dist + "/" + name + ".d.lua"), "w")
			await outFile.write("---@meta\n\n" + annotations, 0)
			await outFile.close()
		}
	} catch (e) {
		try {
			const parsed = JSON.stringify(astRaw, null, "\t")
			const fp = path.resolve(dist + "/" + name + ".json")
			const outFile = await Fs.open(fp, "w")
			await outFile.write(parsed, 0)
			await outFile.close()
			console.error("Error -- AST dumped", fp, e)
		} catch (e) {
			console.log(e)
		}
	}

	await file.close()
}
