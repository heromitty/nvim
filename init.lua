--[[
	neovim の設定ファイル
--]]

-- KeyMaps 
--------------------------------------
vim.keymap.set('n', '<c-n>', '<cmd>NvimTreeToggle<cr>')
--vim.keymap.set('x', '<c-n>', ':NvimTreeToggle<cr>')

-- Options
--------------------------------------
--クリップボード有効
vim.opt.clipboard = "unnamedplus"

-- 拡張子ごとの設定
--------------------------------------
-- Python
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.expandtab = false
  end,
})

-- Lua
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.expandtab = true
  end,
})

-- Plugins 
--------------------------------------
--Lazy(プラグイン管理ツール)
-- https://github.com/folke/lazy.nvim
require("config.lazy").setup("plugins")

-- ColorSchemeの設定
-- 現在使用できるカラースキームの確認方法
-- 	:colorscheme [Ctrl+d]
require("catppuccin").setup()


