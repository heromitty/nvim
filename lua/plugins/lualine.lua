--[[
	lualine(ステータスライン拡張)
	・ここに lualine プラグインの設定を記述していく
--]]

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
      },

			-- 文字数をステータスラインに表示する
      sections = {
        lualine_x = {
          function()
            local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
            local text = table.concat(lines, "\n")
						local count = #text:gsub("\n", "")
            local minutes = math.floor(count / 600)
            return string.format("%d chars (%d min)", count, minutes)
          end
        }
      }
    })
  end
}
