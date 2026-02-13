-- ABOUT: nvim-treesitter

-- Treesitter configurations and abstraction layer for Neovim
-- Provides better syntax highlighting, code navigation, and text objects

--=============================================================================

--[[

    NOTE: Requirements

    treesitter requires the following packages to be installed on your system:
    curl, tar, treesitter (this contains the treesitter cli)

    NOTE: Getting the correct parser names
    Check this link to view a list of the correct language parser names:

    https://github.com/nvim-treesitter/nvim-treesitter/blob/main/SUPPORTED_LANGUAGES.md

    NOTE: Checking your treesitter setup
    To check that everything is working, run this command: 

    :checkhealth nvim-treesitter

--]]

--=============================================================================
return {
    -- Installation
    "nvim-treesitter/nvim-treesitter",
    
    -- Must not be lazy-loaded
    lazy = false,
    
    -- Automatically run :TSUpdate after installation/updates
    build = ":TSUpdate",
    
    -- Activation and configuration
    config = function()
        -- Setup install directory
        require("nvim-treesitter").setup {
            install_dir = vim.fn.stdpath("data") .. "/site"
        }
        
        -- Install parsers
        require("nvim-treesitter").install(
            { 
                "bash", "c", "cpp", "cmake", "css", "dockerfile", "git_config", "gitignore", "go", "gomod", "gosum", "html", "ini", "javascript", "json", 
                "markdown", "markdown_inline", "python", "rust", "solidity", "sql", 
                "svelte", "toml", "typescript", "yaml", "zig"
            }
        )
        
        -- Enable treesitter highlighting for markdown
        -- To get the correct name for a file type, open the file in Neovim,
        -- and then run `:echo &filetype`
        vim.api.nvim_create_autocmd("FileType", {
            pattern = { 
                "cmake", "c", "cpp", "css", "dockerfile", "dosini", "gitconfig", "gitignore", "go", "gomod", "gosum", "html", "javascript", "json", 
                "markdown", "python", "rust", "sh", "solidity", "sql", "svelte", 
                "toml", "typescript", "yaml", "zig"
            },
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
}
