---@meta

MAX_TUTORIAL_ALERTS = 10
TUTORIALFRAME_QUEUE = {  }
LAST_TUTORIAL_BUTTON_SHOWN = nil ---@type nil

---@return nil
function TutorialFrame_OnHide() end

---@param currentTutorial any (type not inferred)
---@return nil
function TutorialFrame_Update(currentTutorial) end

---@param tutorialID any (type not inferred)
---@return nil
function TutorialFrame_NewTutorial(tutorialID) end

---@return nil
function TutorialFrame_GetAlertButton() end

---@return nil
function TutorialFrame_HideAllAlerts() end

---@return nil
function TutorialFrame_CheckIntro() end