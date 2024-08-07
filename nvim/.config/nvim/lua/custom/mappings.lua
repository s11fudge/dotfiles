---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    ["<C-h>"] = { "<cmd>TmuxNavigateLeft<cr>", "Window left" },
    ["<C-l>"] = { "<cmd>TmuxNavigateRight<cr>", "Window right" },
    ["<C-j>"] = { "<cmd>TmuxNavigateDown<cr>", "Window down" },
    ["<C-k>"] = { "<cmd>TmuxNavigateUp<cr>", "Window up" },

    ["<leader>ss"] = { "<cmd>mksession! ~/.local/share/nvim/session/global.vim<cr>", "save session" },
    ["<leader>sl"] = { "<cmd>source ~/.local/share/nvim/session/global.vim<cr>", "load session" },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
