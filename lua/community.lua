-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.completion.magazine-nvim" },
	{ import = "astrocommunity.pack.json" },
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.markdown" },
	{ import = "astrocommunity.pack.python" },
	{ import = "astrocommunity.pack.typescript" },
	{ import = "astrocommunity.pack.tailwindcss" },
	{ import = "astrocommunity.pack.rainbow-delimiter-indent-blankline" },
	-- { import = "astrocommunity.pack.cs" },
	{ import = "astrocommunity.pack.java" },
	{ import = "astrocommunity.git.neogit" },
	{ import = "astrocommunity.markdown-and-latex.markview-nvim" },
	{ import = "astrocommunity.pack.hyprlang" },
	{ import = "astrocommunity.note-taking.obsidian-nvim" },
	{ import = "astrocommunity.recipes.ai" },
	-- import/override with your plugins folder
}
