--[[
	MarkdownPreview(マークダウンプレビュー機能)
	・ここに MarkdownPreview プラグインの設定を記述していく
--]]

return {
  "iamcco/markdown-preview.nvim",
  build = "cd app && npm install",
  ft = { "markdown" },
}
