-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end


-- enable mason
mason.setup()

mason_lspconfig.setup({
  -- list of servers for mason to install
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "lua_ls",
    "clangd",
    "dockerls",
    "docker_compose_language_service",
    "eslint",
    "jsonls",
    "biome",
    "jdtls",
    --"java_language_server",
    "quick_lint_js",
    "vtsls",
    "biome",

    "jedi_language_server",
    "pyre",
    "pyright",
    "sourcery",
    "pylsp",
    "ruff_lsp",

    "sqlls",

    "lemminx",
    "hydra_lsp",
  },
})


