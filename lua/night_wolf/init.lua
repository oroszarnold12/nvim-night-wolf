local colors = {
	-- content here will not be touched
	-- PATCH_OPEN
	Normal = { fg = "#CFCFCF", bg = "#1C1C1C" },
	Added = { fg = "#ABE784" },
	GitSignsStagedAdd = { link = "Added" },
	BufferLineBufferSelected = { fg = "#CFCFCF" },
	BufferLineNumbersSelected = { link = "BufferLineBufferSelected" },
	BufferLineFill = { bg = "#242424" },
	Changed = { fg = "#FFDB94" },
	GitSignsStagedChange = { link = "Changed" },
	CmpCursorLine = { bg = "#3D3D3D" },
	CmpItemAbbrMatch = { fg = "#FFFFFF", bold = true },
	Comment = { fg = "#647882" },
	Constant = { fg = "#FFDB94" },
	CurSearch = { bg = "#7D7D7D" },
	Cursor = { fg = "#CFCFCF" },
	CursorLine = { bg = "#2E2E2E" },
	CursorLineNr = { fg = "#CFCFCF" },
	Delimiter = { fg = "#CFCFCF" },
	DiagnosticInfo = { fg = "#00DBDB" },
	DiffChange = { fg = "#CFCFCF", bg = "#525252" },
	Directory = { fg = "#FFDB94" },
	Function = { fg = "#00DBDB", bold = true },
	IblIndent = { fg = "#2E2E2E" },
	IblScope = { fg = "#7D7D7D" },
	Identifier = { fg = "#00B2FF" },
	IlluminatedWordText = { bg = "#3D3D3D" },
	IlluminatedWordRead = { link = "IlluminatedWordText" },
	IlluminatedWordWrite = { link = "IlluminatedWordText" },
	NeoTreeDirectoryName = { fg = "#A6A6A6" },
	NeoTreeFileName = { fg = "#A6A6A6" },
	NeoTreeGitUnstaged = { fg = "#FFDB94" },
	NeoTreeGitUntracked = { fg = "#ABE784" },
	NoiceCmdLinePopup = { bg = "#242424" },
	NonText = { fg = "#7D7D7D" },
	NormalFloat = { fg = "#CFCFCF", bg = "#242424" },
	NotifyBackground = { link = "NormalFloat" },
	NotifyDEBUGBody = { link = "NormalFloat" },
	NotifyERRORBody = { link = "NormalFloat" },
	NotifyINFOBody = { link = "NormalFloat" },
	NotifyTRACEBody = { link = "NormalFloat" },
	NotifyWARNBody = { link = "NormalFloat" },
	NotifyDEBUGBorder = { fg = "#3D3D3D", bg = "#242424" },
	NotifyDEBUGTitle = { fg = "#3D3D3D" },
	NotifyDEBUGIcon = { link = "NotifyDEBUGTitle" },
	NotifyERRORBorder = { fg = "#FF7A7A", bg = "#242424" },
	NotifyERRORTitle = { fg = "#FF7A7A" },
	NotifyERRORIcon = { link = "NotifyERRORTitle" },
	NotifyINFOBorder = { fg = "#ABE784", bg = "#242424" },
	NotifyINFOTitle = { fg = "#ABE784" },
	NotifyINFOIcon = { link = "NotifyINFOTitle" },
	NotifyTRACEBorder = { fg = "#DC8AFF", bg = "#242424" },
	NotifyTRACETitle = { fg = "#DC8AFF" },
	NotifyTRACEIcon = { link = "NotifyTRACETitle" },
	NotifyWARNBorder = { fg = "#FFDB94", bg = "#242424" },
	NotifyWARNTitle = { fg = "#FFDB94" },
	NotifyWARNIcon = { link = "NotifyWARNTitle" },
	Operator = { fg = "#FF7A7A" },
	Removed = { fg = "#FF7A7A" },
	GitSignsStagedRemove = { link = "Removed" },
	Search = { bg = "#3D3D3D" },
	Special = { fg = "#9494FF" },
	Statement = { fg = "#9494FF" },
	String = { fg = "#ABE784" },
	TelescopeBorder = { fg = "#CFCFCF", bg = "#242424" },
	TelescopeMatching = { fg = "#FFFFFF", bold = true },
	TelescopeNormal = { fg = "#CFCFCF", bg = "#242424" },
	TelescopeSelection = { bg = "#3D3D3D" },
	TreesitterContextLineNumber = { fg = "#CFCFCF" },
	Type = { fg = "#DC8AFF" },
	Visual = { bg = "#3D3D3D" },
	["@boolean.typescript"] = { fg = "#FF7A7A" },
	["@keyword.conditional.ternary.tsx"] = { fg = "#FF7A7A" },
	["@keyword.operator.typescript"] = { fg = "#FF7A7A" },
	["@keyword.return.typescript"] = { fg = "#00B2FF" },
	["@keyword.return.tsx"] = { link = "@keyword.return.typescript" },
	["@keyword.type.typescript"] = { fg = "#00B2FF" },
	["@keyword.typescript"] = { fg = "#00B2FF" },
	["@keyword.tsx"] = { link = "@keyword.typescript" },
	["@keyword.type.tsx"] = { link = "@keyword.typescript" },
	["@lsp.type.class.typescript"] = { fg = "#00DBDB" },
	["@lsp.type.member.typescript"] = { fg = "#00DBDB" },
	["@lsp.type.property.typescript"] = { fg = "#CFCFCF" },
	["@lsp.type.property.typescriptreact"] = { link = "@lsp.type.property.typescript" },
	["@punctuation.bracket.typescript"] = { fg = "#FFC929" },
	["@punctuation.bracket.tsx"] = { link = "@punctuation.bracket.typescript" },
	["@punctuation.delimiter.typescript"] = { fg = "#FF7A7A" },
	["@punctuation.delimiter.tsx"] = { link = "@punctuation.delimiter.typescript" },
	["@punctuation.special.typescript"] = { link = "@punctuation.delimiter.typescript" },
	["@tag.delimiter.tsx"] = { fg = "#CFCFCF" },
	["@tag.tsx"] = { fg = "#FF7A7A" },
	["@variable"] = { fg = "#FFDB94" },
	["@type.tsx"] = { link = "@variable" },
	["@type.typescript"] = { link = "@variable" },
	-- PATCH_CLOSE
	-- content here will not be touched
}

local M = {}

M.setup = function()
	-- colorschemes generally want to do this
	vim.cmd("highlight clear")
	vim.cmd("set t_Co=256")
	vim.cmd("let g:colors_name='night_wolf'")

	-- apply highlight groups
	for group, attrs in pairs(colors) do
		vim.api.nvim_set_hl(0, group, attrs)
	end
end

return M
