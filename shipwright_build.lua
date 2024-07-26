-- shipwright_build.lua
local lushwright = require("shipwright.transform.lush")
local colorscheme = require("lua/night_wolf/lush_theme/night_wolf")

run(
	colorscheme,
	-- generate lua code
	lushwright.to_lua,
	-- write the lua code into our destination.
	-- you must specify open and close markers yourself to account
	-- for differing comment styles, patchwrite isn't limited to lua files.
	{ patchwrite, "lua/night_wolf/init.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE" }
)
