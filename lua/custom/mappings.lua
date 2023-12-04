---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>qq"] = {
      function()
        vim.api.nvim_command ":qall"
      end,
      "close NvChad",
    },
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
    ["<leader>ww"] = { "<cmd> set wrap! <CR>", "Toggle Word Wrap" },
  },

  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!
--
M.copilot = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
      end,
      "Copilot Accept",
      { replace_keycodes = true, nowait = true, silent = true, expr = true, noremap = true },
    },
  },
}

return M
