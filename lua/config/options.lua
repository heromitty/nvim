--[[
	Neovim の基本設定
--]]

-- プラグイン前の設定
--------------------------------------
-- Neovim の Python スタイルを無視する
-- (C:\Program Files\Neovim\share\nvim\runtime\ftplugin\python.vim)
vim.g.python_recommended_style = 0
--ファイルを開くたびに、その場所をカレントディレクトリにする
vim.o.autochdir = true

-- 共通設定
--------------------------------------
--"折り返しを無効化
vim.opt.wrap = false        
--"文字コード
vim.opt.fileencodings = {
  "utf-8",
  "cp932",
  "utf-16le"
}
--"フォント
vim.o.guifont = "HackGen:h11"
--if vim.g.GuiLoaded then
	-- set guifont=PlemolJP\ HS:h12     
  --vim.cmd("GuiFont PlemolJP HS:h12")
--end
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
--"クリップボード有効
vim.opt.clipboard = "unnamedplus"


