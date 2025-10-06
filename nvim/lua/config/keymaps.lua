-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Terminal = require("toggleterm.terminal").Terminal

vim.keymap.set("n", "<leader>r", function()
  local root = vim.fn.findfile("Cargo.toml", ".;")
  if root ~= "" then
    local cargo_term = Terminal:new({
      cmd = "bash -c 'cargo run; echo; read -p \"Press Enter to close...\"'", -- wait
      direction = "horizontal",
      close_on_exit = true,
      hidden = true,
    })
    cargo_term:toggle()
  else
    print("Not a Rust project!")
  end
end, { desc = "Quick project run for Rust" })
