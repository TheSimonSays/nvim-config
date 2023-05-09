local mason_status, mason = pcall(require, "mason")

if not mason_status then
    return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")

if not mason_lspconfig_status then
    return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")

if not mason_lspconfig_status then
    return
end

mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        "awk_ls",
        "bashls",
        "clangd",
        "cmake",
        "dockerls",
        "docker_compose_language_service",
        "golangci_lint_ls",
        "gopls",
        "jsonls",
        "lua_ls",
        "marksman",
        "spectral",
        "pyright",
        "sqlls",
        "taplo",
        "yamlls",
    },
})

mason_null_ls.setup({
    ensure_installed = {
        "black",
        "isort",  
    },
})