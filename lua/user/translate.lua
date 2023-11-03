local M = {}
function M.translateEsToEn()
  vim.g.translator_source_lang='es'
  vim.g.translator_target_lang='en'
end

function M.translateEnToEs()
  vim.g.translator_source_lang='en'
  vim.g.translator_target_lang='es'
end

return M
