-- 2 Space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.autoindent = true
vim.bo.smartindent = true

-- Press `space then ff` to format the current html file 
-- with `denofmt` 
vim.keymap.set(
    "n", 
    "<leader>ff", 
    function()
        vim.cmd("silent update | silent !deno fmt % | edit")
    end, 
    {
      desc = "[f]ormat [f]ile",
      buffer = true,
      silent = true,
    }
)
