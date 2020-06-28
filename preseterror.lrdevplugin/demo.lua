local LrApplication = import 'LrApplication'
local LrDialogs = import 'LrDialogs'
local LrTasks = import 'LrTasks'
 
LrTasks.startAsyncTask(function ()
  local catalog = LrApplication.activeCatalog()
 
  local photo = catalog:getTargetPhoto()
  if photo == nil then
    LrDialogs.message("Preset Error Demo", "Please select a photo")
    return
  end

  local edits = {
    Exposure2012 = 1
  }
  photo.catalog:withWriteAccessDo("VSCO Keys", function()
    local preset = LrApplication.addDevelopPresetForPlugin(_PLUGIN, "Update Exposure in plugin preset", edits)
    photo:applyDevelopPreset(preset, _PLUGIN)
  end, {asynchronous = true})

end)