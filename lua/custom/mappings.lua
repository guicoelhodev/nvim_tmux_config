---@type MappingsTable
local M = {}

M.personalized = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- move inside of a buffer
    ["<leader>k"] = {"<C-u>"},
    ["<leader>j"] = {"<C-d>"},
    --save and quit
    ["<leader>s"] = {"<cmd> w <CR>"},
    -- ["<leader>Q"] = {"<cmd> qa <CR>"},
    -- split a buffer
    ["<leader>vsp"] = {"<cmd> vsplit <CR>"},
    -- switch between windows
    ["<leader>h"] = { "<C-w>h", "Window left" },
    ["<leader>l"] = { "<C-w>l", "Window right" },
    ["<leader>mj"] = { "<C-w>j", "Window down" },
    ["<leader>mk"] = { "<C-w>k", "Window up" },
    --center 
    ["<leader>c"] = {":Centerpad <CR>", "center panel"},
    ["<leader>C"] = {":Centerpad", "center panel and set size"},
    ["<leader>8c"] = {":Centerpad 80 80 <CR>", "center panel 80 80"},
    ["<leader>1c"] = {":Centerpad 100 100 <CR>", "center panel 100 100"},
    ["<leader>5c"] = {":Centerpad 50 50 <CR>", "center panel 50 50"},
    --resize buffer
    ["<leader><left>"] = {"<c-w><", "recise left"},
    ["<leader><right>"] = {"<c-w>>", "resize right"},
    --seach 
    ["<leader>fi"] = {"<leader>fz", "search in current buffer"},

    ["Y"] = {"yy", "copy line"},

    -- close buffer after select with <leader> + d
    ["<leader>d"] = {
      function()

        vim.cmd('wincmd j')
        vim.api.nvim_win_close(0, false)
      end,
      "close bottom terminal after use <leader>d"
    },
    --harppon maps 
    ["we"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "toggle harpoon"
    },
    ["wr"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "Add File to harpoon"
    },
    ["wo"] = {
      function()
        require("harpoon.ui").nav_file(vim.api.nvim_get_current_line())
      end,
      "open harpoon file"
    },
    ["wh"] = {
      function()
        require("harpoon.ui").nav_file(1)
      end,
      "navigates to term 1"
    },
    ["wj"] = {
      function()
        require("harpoon.ui").nav_file(2)
      end,
      "navigates to term 2"
    },
    ["wk"] = {
      function()
        require("harpoon.ui").nav_file(3)
      end,
      "navigates to term 3"
    },
    ["wl"] = {
      function()
        require("harpoon.ui").nav_file(4)
      end,
      "navigates to term 4"
    },

    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle explorer tree"},
    --tabs buffers
     ["tl"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },
    ["th"] = {
      function()
         require("nvchad.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },
    ["tth"] = {
      function()
        vim.o.showtabline = vim.o.showtabline == 0 and 2 or 0
      end,
      "Goto prev buffer",
    },
    ["<space>D"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "LSP declaration",
    },
    ["<space>d"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition",
    },

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}
M.nvterm = {
  plugin = true,

  n = {
    -- toggle in normal mode
    ["<A-i>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
    ["<A-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term"
    },
    ["<A-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term"
    },
  },
  t = {
    -- toggle in terminal mode
    ["<A-i>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
    ["<A-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term"
    },
    ["<A-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term"
    },
 
  }
}
-- more keybinds!

return M
