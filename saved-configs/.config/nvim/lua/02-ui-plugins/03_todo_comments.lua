-- ABOUT: 
-- Highlights your comments

--=============================================================================

return {
    -- Installation
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },

    -- Activation and configuration
    config = function()
        require("todo-comments").setup({

        -- Show icons in the sign column on the left
        -- of the line numbers
            signs = true,
        -- Ensure that the signs are visible
            sign_priority = 8,
            keywords = {
                SECTION = { icon = "🚀", color = "section" },
                SUB_SECTION = { icon = "🛩️", color = "sub_section" },
                NOTE = { icon = "📚", color = "note" },
                ABOUT = { icon = "📜", color = "about" },
                TIP = { icon = "💡", color = "tip" },
                TODO = { icon = "🍨", color = "todo"},
                STEP = { icon = "👣", color = "step" },
            },
            colors = {
                note = { "#05fa78" },
                section = { "#c048f7" },
                step = { "#176bc6" },
                sub_section = { "#ff004d" },
                tip = { "#ff6e00" },
                about = { "#ffb000" },
                todo = { "#1ecbe1"}
            }

        })
    end
}

--=============================================================================
