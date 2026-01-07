vim.o.guifont = vim.env.DOTENV_NVIM_GUIFONT
-- stylua: ignore
print(vim.env.DOTENV_NVIM_GUIFONT)

vim.g.neovide_window_blurred = false
vim.g.neovide_opacity = 0.8
vim.g.neovide_normal_opacity = 0.8
vim.g.neovide_theme = "auto"
vim.g.neovide_refresh_rate = 144

vim.g.neovide_no_idle = true
vim.g.neovide_refresh_rate_idle = 5
vim.g.neovide_cursor_animation_length = 0.150

-- Cursor: railgun, torpedo,  pixiedust, sonicboom, ripple, wireframe
vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.neovide_cursor_vfx_opacity = 200.0
vim.g.neovide_cursor_vfx_particle_lifetime = 0.5
vim.g.neovide_cursor_vfx_particle_highlight_lifetime = 0.2
vim.g.neovide_cursor_vfx_particle_curl = 1.0
vim.g.neovide_cursor_vfx_particle_phase = 1.5
vim.g.neovide_cursor_vfx_particle_speed = 10.0
vim.g.neovide_cursor_vfx_particle_density = 0.7
vim.g.neovide_cursor_vfx_particle_lifetime = 0.5
vim.g.neovide_cursor_vfx_particle_highlight_lifetime = 0.2
vim.g.neovide_has_mouse_grid_detection = true

-- Copy (Ctrl+C in terminal, mapped to "+y in visual mode)
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true })
-- Paste (Ctrl+V in terminal, mapped to "+P in visual/normal mode)
vim.keymap.set("v", "<C-v>", '"+P', { noremap = true })
vim.keymap.set("n", "<C-v>", '"+P', { noremap = true })
-- Paste in Insert mode (Ctrl+V)
vim.keymap.set("i", "<C-v>", '<ESC>l"+Pli', { noremap = true }) -- May need adjustment for cursor position

vim.keymap.set("v", "<C-c>", '"+y', { noremap = true })

vim.keymap.set("c", "<C-v>", '"+P', { noremap = true })

-- vim.keymap.set("t", "<C-v>", '"+P', { noremap = true })
