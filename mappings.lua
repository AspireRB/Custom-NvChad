---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>rs"] = {"<Plug>(easymotion-s2)", "Easymotion"},
  },

  i = {
    ["jk"] = { "<ESC>", "escape insert mode" },
  },
}

-- more keybinds!

M.treesitter = {
  n = {
    ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "Find media" },
  },
}

M.shade = {
  n = {
    ["<Bslash>"] = {
      function()
        require("shade").toggle()
      end,

      "toggle shade.nvim",
    },
  },
}

M.nvterm = {
  n = {
    ["<leader>gc"] = {
      function()
        require("nvterm.terminal").send("clear && g++ -o out " .. vim.fn.expand "%" .. " && ./out", "vertical")
      end,

      "compile & run a cpp file",
    },
  },
}

return M
