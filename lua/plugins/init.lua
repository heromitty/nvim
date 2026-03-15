--[[
	Lazy 管理のプラグインリスト
	・ここにインストールしたいプラグインを記述していく
	(参考)https://github.com/LazyVim/LazyVim/tree/main/lua/lazyvim/plugins
--]]
return {
	-- nvim-tree
	-- https://github.com/nvim-tree/nvim-tree.lua
  require("plugins.nvim-tree"),
	-- telescope.nvim
	-- https://github.com/nvim-telescope/telescope.nvim
  require("plugins.nvim-telescope"),
	-- markdown-preview.nvim
	-- https://github.com/iamcco/markdown-preview.nvim
  require("plugins.markdown-preview"),
	-- color scheme"Cappuccin"
	-- https://github.com/catppuccin/nvim?tab=readme-ov-file
  require("plugins.catppuccin"),
}



