vim.wo.foldcolumn = '0'
vim.wo.foldlevel = 99 -- feel free to decrease the value
vim.wo.foldenable = true

-- option 2: nvim lsp as LSP client
-- tell the server the capability of foldingRange
-- nvim hasn't added foldingRange to default capabilities, users must add it manually
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}
local language_servers = {} -- like {'gopls', 'clangd'}
for _, ls in ipairs(language_servers) do
    require('lspconfig')[ls].setup({
        capabilities = capabilities,
    })
end

local status_ok, ufo = pcall(require, "ufo")
if not status_ok then
  return
end
ufo.setup()

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "nvcheatsheet", "neo-tree", "yml", "yaml" },
  callback = function()
    ufo.detach()
  end
})
