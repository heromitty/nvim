--[[
	Lazy 管理のプラグインリスト
	・ここにインストールしたいプラグインを記述していく
	(参考)https://github.com/LazyVim/LazyVim/tree/main/lua/lazyvim/plugins
--]]
return {
  {
		-- nvim-tree
		-- https://github.com/nvim-tree/nvim-tree.lua
    "nvim-tree/nvim-tree.lua",
    opts = {},
  },
	{
		-- telescope.nvim
		-- https://github.com/nvim-telescope/telescope.nvim
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		-- color scheme"Cappuccin"
		-- https://github.com/catppuccin/nvim?tab=readme-ov-file
		"catppuccin/nvim", 
		name = "catppuccin", 
		priority=1000,
		config = function()
			vim.cmd([[colorscheme catppuccin]])
		end,
	}, 
}

