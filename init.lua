--[[
	neovim の設定ファイル
--]]
--
-- プラグイン前の設定
--------------------------------------
-- Neovim の Python スタイルを無視する
-- (C:\Program Files\Neovim\share\nvim\runtime\ftplugin\python.vim)
vim.g.python_recommended_style = 0
--ファイルを開くたびに、その場所をカレントディレクトリにする
vim.o.autochdir = true

-- 共通設定
--------------------------------------
--"クリップボード有効
vim.opt.clipboard = "unnamedplus"
	-- ノーマル・ビジュアル・インサートで Ctrl+C / Ctrl+V を有効化
	local opts = { noremap = true, silent = true }
	-- ノーマルモードで Ctrl+V → クリップボードからペースト
	vim.api.nvim_set_keymap('n', '<C-v>', '"+p', opts)
	-- ビジュアルモードで Ctrl+C → 選択テキストをクリップボードにコピー
	vim.api.nvim_set_keymap('v', '<C-c>', '"+y', opts)
	-- ビジュアルモードで Ctrl+V → クリップボードからペースト（上書き）
	vim.api.nvim_set_keymap('v', '<C-v>', '"+p', opts)
	-- インサートモードで Ctrl+V → クリップボードからペースト
	vim.api.nvim_set_keymap('i', '<C-v>', '<C-r>+', opts)
--"折り返しを無効化
vim.opt.wrap = false        
--"文字コード
vim.opt.fileencodings = {
  "utf-8",
  "cp932",
  "utf-16le"
}
--"フォント
if vim.g.GuiLoaded then
	-- set guifont=PlemolJP\ HS:h12     
  vim.cmd("GuiFont PlemolJP HS:h12")
end
--"行番号の表示
vim.opt.number = true
--"タブ入力を複数の空白入力に置き換える
--vim.opt.expandtab = true	
--"画面上でタブ文字が占める幅
vim.opt.tabstop = 4				
--"インデントでずれる幅
vim.opt.shiftwidth = 4		
--"連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
vim.opt.softtabstop = 4		
--"改行時に前の行のインデントを継続する
vim.opt.autoindent = true	
--"改行時に入力された行の末尾に合わせて次の行のインデントを増減する
vim.opt.smartindent = true
--"検索時に大文字・小文字を区別しない
vim.opt.ignorecase = true
-- バックアップを保存しない
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = true

-- プラグインに依存しないキーマップ
--------------------------------------
-- Ctrl+V で貼り付けを有効にする
-- vim.cmd("nnoremap <C-v> \"+p")
-- vim.keymap.set("n", "<C-v>", '"+p', { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-v>", '"+p')
-- インサートモードでも Ctrl+V で貼り付け
-- vim.cmd('inoremap <C-v> <C-r>+')
-- vim.keymap.set("i", "<C-v>", '<C-r>+')

-- 各種プラグインの設定は、lua/plugins 内で
--------------------------------------
--Lazy(プラグイン管理ツール) https://github.com/folke/lazy.nvim
-- lazy を読み込む前に leader を設定する
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
require("config.lazy")

-- 拡張子ごとの設定は、after/ftplugin 内で
--------------------------------------


