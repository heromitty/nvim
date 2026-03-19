--[[
	キーマップ設定
--]]

-- ノーマル・ビジュアル・インサートで Ctrl+C / Ctrl+V を有効化
local opts = { noremap = true, silent = true }
-- ノーマルモードで Ctrl+V → クリップボードからペースト
vim.keymap.set('n', '<C-v>', '"+p', opts)
-- ビジュアルモードで Ctrl+C → 選択テキストをクリップボードにコピー
vim.keymap.set('v', '<C-c>', '"+y', opts)
-- ビジュアルモードで Ctrl+V → クリップボードからペースト（上書き）
vim.keymap.set('v', '<C-v>', '"+p', opts)
-- インサートモードで Ctrl+V → クリップボードからペースト
vim.keymap.set('i', '<C-v>', '<C-r>+', opts)
-- コマンドモードで Ctrl+V → クリップボードからペースト
vim.keymap.set("c", "<C-v>", "<C-r>+", { noremap = true })
