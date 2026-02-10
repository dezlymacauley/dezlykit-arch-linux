-- ABOUT: LSP Settings

--[[

https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lsp-configs

To check if your language server and configuration are working run this:

:checkhealth vim.lsp

or you can use the shorthand:

:LspInfo

--]]

-------------------------------------------------------------------------------

-- SECTION: Bash (.sh)

vim.lsp.config(
    "bashls",
    {
        cmd = { "bash-language-server", "start" },
        root_dir = vim.fs.root(0, { "package.json" }),
        filetypes = { "sh" },
    }
)

vim.lsp.enable("bashls")

-------------------------------------------------------------------------------

-- SECTION: Go (.go)

vim.lsp.config(
    "gopls", {
        cmd = { "gopls" },
        filetypes = { "go" },
    }

)

vim.lsp.enable("gopls")

-------------------------------------------------------------------------------

-- SECTION: Rust (.rs)

vim.lsp.config(
    "rust_analyzer",
    {
        cmd = { "rust-analyzer" },
        filetypes = { "rust" },
    }
)

vim.lsp.enable("rust_analyzer")

-------------------------------------------------------------------------------

-- SECTION: TypeScript (.ts), JavaScript (.js)

vim.lsp.config(
    "ts_ls",
    {
        cmd = { "typescript-language-server", "--stdio" },
        root_dir = vim.fs.root(0, { "package.json" }),
        filetypes = { "typescript", "javascript" },
    }
)

vim.lsp.enable("ts_ls")

-------------------------------------------------------------------------------
