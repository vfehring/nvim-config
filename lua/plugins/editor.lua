vim.g.neo_tree_remove_legacy_commands = 1

return {

  -- file explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    keys = { { "<leader>ft", "<cmd>Neotree toggle<cr>", desc = "NeoTree" } },
    config = {
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        hijack_netrw_behavior = "open_current",
        filtered_items = {
          hide_dotfiles = false,
        },
      },
    },
  },

  -- fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    keys = { { "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find Files" } },
    config = true,
  },

  -- which-key
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = {
      plugins = { spelling = true },
      key_labels = { ["<leader>"] = "SPC" },
    },
  },
}
