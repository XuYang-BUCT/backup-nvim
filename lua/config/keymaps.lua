-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opt = { noremap = true, silent = true }
-- 快捷键配置

-- 在插入模式下用新的按键来代替不容易按到的esc按键
keymap.set("i", "jk", "<Esc>")
-- 跟着教程添加的，目前我也不是很了解有什么用
keymap.set("n", "<leader>sx", require("telescope.builtin").resume, { noremap = true, silent = true, desc = "Resume" })
-- 用来按F8方便地查看markdown文件
keymap.set("n", "<F8>", ":MarkdownPreview<CR>", { noremap = true, silent = true, desc = "markdownpreview" })
-- 调整ctrl+u/d的翻页范围，更人性化一点
keymap.set("n", "<C-u>", "9k", opt)
keymap.set("n", "<C-d>", "9j", opt)
