local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig["pyright"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

