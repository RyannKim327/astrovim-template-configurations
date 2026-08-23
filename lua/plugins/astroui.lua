-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--			 as this provides autocomplete and documentation while editing
---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "catppuccin", -- "rose-pine"
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        Normal = { bg = "NONE", ctermbg = "NONE" },
        NormalNC = { bg = "NONE", ctermbg = "NONE" },
        CursorLine = { ctermbg = "NONE", ctermfg = "NONE" },
        CursorLineNr = { ctermbg = "NONE", ctermfg = "NONE" },
        LineNr = { ctermbg = "NONE", ctermfg = "NONE" },
        SignColumn = { ctermbg = "NONE", ctermfg = "NONE" },
        StatusLine = { ctermbg = "NONE", ctermfg = "NONE" },
        NeoTreeNormal = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeNormalNC = { bg = "NONE", ctermbg = "NONE" },
      },
      astrotheme = { -- a table of overrides/changes when applying the astrotheme theme
        Normal = { bg = "NONE", ctermbg = "NONE" },
        NormalNC = { bg = "NONE", ctermbg = "NONE" },
        CursorLine = { ctermbg = "NONE", ctermfg = "NONE" },
        CursorLineNr = { ctermbg = "NONE", ctermfg = "NONE" },
        LineNr = { ctermbg = "NONE", ctermfg = "NONE" },
        SignColumn = { ctermbg = "NONE", ctermfg = "NONE" },
        StatusLine = { ctermbg = "NONE", ctermfg = "NONE" },
        NeoTreeNormal = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeNormalNC = { bg = "NONE", ctermbg = "NONE" },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
