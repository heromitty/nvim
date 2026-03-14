--[[
	Catppuccin(カラースキーム)
	・ここに Catppuccin プラグインの設定を記述していく
--]]

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
		-- ColorSchemeの設定
		-- 現在使用できるカラースキームの確認方法
		-- 	:colorscheme [Ctrl+d]
    vim.cmd.colorscheme("catppuccin")
  end,
}

