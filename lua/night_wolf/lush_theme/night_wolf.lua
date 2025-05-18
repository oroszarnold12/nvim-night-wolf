local lush = require("lush")
local hsl = lush.hsl

local colors = {
	white = hsl(0, 0, 100),
	black = hsl(0, 0, 0),
	text = hsl(0, 0, 81),
	dim_text = hsl(0, 0, 65),
	main = hsl(0, 0, 11),
	main0 = hsl(0, 0, 14),
	main1 = hsl(0, 0, 18),
	main2 = hsl(0, 0, 24),
	main3 = hsl(0, 0, 32),
	main4 = hsl(0, 0, 49),
	main5 = hsl(0, 0, 62),
	syntax_red = hsl(0, 100, 74),
	syntax_red_intense = hsl(326, 100, 66),
	syntax_orange = hsl(24, 100, 75),
	syntax_dark_orange = hsl(20, 100, 70),
	syntax_yellow = hsl(40, 100, 79),
	syntax_beige = hsl(47, 31, 79),
	syntax_green = hsl(96, 67, 71),
	syntax_cyan = hsl(180, 100, 43),
	syntax_light_blue = hsl(191, 83, 74),
	syntax_blue = hsl(198, 100, 50),
	syntax_violet = hsl(240, 100, 79),
	syntax_purple = hsl(282, 100, 77),
	syntax_magenta = hsl(300, 100, 66),
	comment = hsl(200, 13, 45),
	warning = hsl(45, 100, 58),
}

local theme = lush(function(injected_functions)
	local sym = injected_functions.sym

	return {
		Comment({ fg = colors.comment }),
		Constant({ fg = colors.syntax_yellow }),
		CurSearch({ bg = colors.main4 }),
		Delimiter({ fg = colors.text }),
		Function({ fg = colors.syntax_cyan, bold = true }),
		Identifier({ fg = colors.syntax_blue }),
		NonText({ fg = colors.main4 }),
		Normal({ bg = colors.main, fg = colors.text }),
		NormalFloat({ bg = colors.main0, fg = colors.text }),
		Search({ bg = colors.main2 }),
		Special({ fg = colors.syntax_violet }),
		Statement({ fg = colors.syntax_violet }),
		String({ fg = colors.syntax_green }),
		Type({ fg = colors.syntax_purple }),
		Visual({ bg = colors.main2 }),
		Directory({ fg = colors.syntax_yellow }),
		Operator({ fg = colors.syntax_red }),
		DiffChange({ fg = colors.text, bg = colors.main3 }),
		DiagnosticInfo({ fg = colors.syntax_cyan }),

		Added({ fg = colors.syntax_green }),
		Changed({ fg = colors.syntax_yellow }),
		Removed({ fg = colors.syntax_red }),

		sym("@boolean.typescript")({ fg = colors.syntax_red }),

		sym("@keyword.conditional.ternary.tsx")({ fg = colors.syntax_red }),
		sym("@keyword.operator.typescript")({ fg = colors.syntax_red }),
		sym("@keyword.return.typescript")({ fg = colors.syntax_blue }),
		sym("@keyword.return.tsx")({ sym("@keyword.return.typescript") }),
		sym("@keyword.type.typescript")({ fg = colors.syntax_blue }),
		sym("@keyword.typescript")({ fg = colors.syntax_blue }),
		sym("@keyword.tsx")({ sym("@keyword.typescript") }),
		sym("@keyword.type.tsx")({ sym("@keyword.typescript") }),

		sym("@lsp.type.class.typescript")({ fg = colors.syntax_cyan }),
		sym("@lsp.type.member.typescript")({ fg = colors.syntax_cyan }),
		sym("@lsp.type.property.typescript")({ fg = colors.text }),
		sym("@lsp.type.property.typescriptreact")({ sym("@lsp.type.property.typescript") }),

		sym("@punctuation.bracket.typescript")({ fg = colors.warning }),
		sym("@punctuation.bracket.tsx")({ sym("@punctuation.bracket.typescript") }),
		sym("@punctuation.delimiter.typescript")({ fg = colors.syntax_red }),
		sym("@punctuation.special.typescript")({ sym("@punctuation.delimiter.typescript") }),
		sym("@punctuation.delimiter.tsx")({ sym("@punctuation.delimiter.typescript") }),

		sym("@tag.tsx")({ fg = colors.syntax_red }),
		sym("@tag.delimiter.tsx")({ fg = colors.text }),

		sym("@variable")({ fg = colors.syntax_yellow }),
		sym("@type.tsx")({ sym("@variable") }),
		sym("@type.typescript")({ sym("@variable") }),

		CursorLineNr({ fg = colors.text }),
		CursorLine({ bg = colors.main1 }),
		Cursor({ fg = colors.text }),

		TreesitterContextLineNumber({ fg = colors.text }),

		TelescopeNormal({ fg = colors.text, bg = colors.main0 }),
		TelescopeBorder({ fg = colors.text, bg = colors.main0 }),
		TelescopeSelection({ bg = colors.main2 }),
		TelescopeMatching({ fg = colors.white, bold = true }),

		NoiceCmdLinePopup({ bg = colors.main0 }),

		CmpCursorLine({ bg = colors.main2 }),
		CmpItemAbbrMatch({ fg = colors.white, bold = true }),

		IblIndent({ fg = colors.main1 }),
		IblScope({ fg = colors.main4 }),

		NotifyBackground({ NormalFloat }),
		NotifyINFOTitle({ fg = colors.syntax_green }),
		NotifyINFOIcon({ NotifyINFOTitle }),
		NotifyINFOBody({ NormalFloat }),
		NotifyINFOBorder({ NotifyINFOTitle, bg = colors.main0 }),
		NotifyERRORTitle({ fg = colors.syntax_red }),
		NotifyERRORIcon({ NotifyERRORTitle }),
		NotifyERRORBody({ NormalFloat }),
		NotifyERRORBorder({ NotifyERRORTitle, bg = colors.main0 }),
		NotifyWARNTitle({ fg = colors.syntax_yellow }),
		NotifyWARNIcon({ NotifyWARNTitle }),
		NotifyWARNBody({ NormalFloat }),
		NotifyWARNBorder({ NotifyWARNTitle, bg = colors.main0 }),
		NotifyTRACETitle({ fg = colors.syntax_purple }),
		NotifyTRACEIcon({ NotifyTRACETitle }),
		NotifyTRACEBody({ NormalFloat }),
		NotifyTRACEBorder({ NotifyTRACETitle, bg = colors.main0 }),
		NotifyDEBUGTitle({ fg = colors.main2 }),
		NotifyDEBUGIcon({ NotifyDEBUGTitle }),
		NotifyDEBUGBody({ NormalFloat }),
		NotifyDEBUGBorder({ NotifyDEBUGTitle, bg = colors.main0 }),

		IlluminatedWordText({ bg = colors.main2 }),
		IlluminatedWordRead({ IlluminatedWordText }),
		IlluminatedWordWrite({ IlluminatedWordText }),

		NeoTreeGitUntracked({ fg = colors.syntax_green }),
		NeoTreeGitUnstaged({ fg = colors.syntax_yellow }),
		NeoTreeDirectoryName({ fg = colors.dim_text }),
		NeoTreeFileName({ fg = colors.dim_text }),
		NeoTreeTitleBar({ fg = colors.text, bg = colors.main2 }),

		GitSignsStagedAdd({ Added }),
		GitSignsStagedChange({ Changed }),
		GitSignsStagedRemove({ Removed }),
	}
end)

return theme
