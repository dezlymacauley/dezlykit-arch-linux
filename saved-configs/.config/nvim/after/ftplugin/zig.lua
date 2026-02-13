-- 4 Space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.autoindent = true
vim.bo.smartindent = true

vim.keymap.set(
    "n", "ff", 
    function()
        vim.cmd("update") -- save the current file
        vim.cmd("silent !zig fmt % >/dev/null 2>&1") -- format the file
        vim.cmd("checktime") -- refresh the file
    end,
    {
        buffer = true,
        desc = "[f]ormat [f]ile"
    }
)
