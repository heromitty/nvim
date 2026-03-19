--[[
	NeoVim の設定ファイル
--]]

-- 基本設定
--------------------------------------
require("config.options")

-- キーマップ設定
--------------------------------------
require("config.keymaps")

-- 各種プラグインの設定は、lua/plugins 内で
--------------------------------------
--Lazy(プラグイン管理ツール) https://github.com/folke/lazy.nvim
-- lazy を読み込む前に leader を設定する
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
require("config.lazy")

-- 拡張子ごとの設定は、after/ftplugin 内で
--------------------------------------


