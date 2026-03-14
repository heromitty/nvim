--[[
	NvimTree(ファイラー)
	・ここに NvimTree プラグインの設定を記述していく
--]]

return {
  "nvim-tree/nvim-tree.lua",

	-- Ctrl+N で NvimTreeToggle を起動
	keys = {
		{ "<C-n>", "<cmd>NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
	},

  opts = {
		-- ファイルの並び順を大文字小文字で区別する
    sort_by = "case_sensitive",

		-- ツリーパネルの横幅(単位は文字数)
    view = {
      width = 30,
    },

		-- 空ディレクトリをまとめて表示する
    renderer = {
      group_empty = true,
    },

		-- .から始まるファイルを表示するか
    filters = {
      dotfiles = false,
    },

		-- ファイル変更の自動検知を有効
    filesystem_watchers = {
      enable = true,
    },

		-- 現在編集中のファイルにツリーを追従させる
    update_focused_file = {
      enable = true,
      update_root = true,
    },

		-- NvimTree からファイルを開いたら自動で閉じる
		actions = {
			open_file = {
				quit_on_open = true,
			},
		},

	},
}
