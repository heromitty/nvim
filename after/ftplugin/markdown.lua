--[[
	md の設定ファイル
	※プラグインの設定よりも後に実行される
--]]

--"画面上でタブ文字が占める幅
vim.opt_local.tabstop = 2
--"インデントでずれる幅
vim.opt_local.shiftwidth = 2
--"連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
vim.opt_local.softtabstop = 2
--"行を折り返して表示する
vim.opt_local.wrap = true
--"単語や区切りの良い位置で折り返す
vim.opt_local.linebreak = true

