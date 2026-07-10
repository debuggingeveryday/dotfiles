require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Start Pomodoro
map("n", "<F12>", "<cmd> TimerSession pomodoro<cr>", { desc = "Pomodoro Start" })

map("n", "K", "Eli<CR><Esc>", { desc = "Enter next line" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Keep selection when shifting left
map("v", "<", "<gv")

-- Keep selection when shifting right
map("v", ">", ">gv")

map("i", "<Tab>", "\t", { desc = "Indent block" })

map('i', '<C-j>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
