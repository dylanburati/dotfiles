require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'python',
        'comment',
        'lua',
        --'typescript',
        --'javascript',
    },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    textobjects = {
        move = {
            enable = true,
            goto_next_start = {
                ["]p"] = "@parameter.outer",
                ["]o"] = "@conditional.outer",
                ["]i"] = "@loop.outer",
            },
            goto_previous_start = {
                ["[p"] = "@parameter.outer",
                ["[o"] = "@conditional.outer",
                ["[i"] = "@loop.outer",
            }

        },
        select = {
          enable = true,

          -- Automatically jump forward to textobj, similar to targets.vim
          lookahead = true,

          keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            -- ["af"] = "@function.outer",
            -- ["if"] = "@function.inner",
            -- ["ac"] = "@class.outer",
            -- You can optionally set descriptions to the mappings (used in the desc parameter of
            -- nvim_buf_set_keymap) which plugins like which-key display
            -- ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
            -- You can also use captures from other query groups like `locals.scm`
            -- ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
          },
        }
    }
}
