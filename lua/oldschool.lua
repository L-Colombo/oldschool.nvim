local oldschool = {}


local palette = {
    black        = "#000000",
    dark_grey    = "#252525",
    light_grey   = "#666666",
    opaque_white = "#cccddd",
    white        = "#ffffff",
    dark_green   = "#00875f",
    medium_green = "#007200",
    bright_green = "#20de20",
    blue         = "#0099f8",
    yellow       = "#e5fb02",
    red          = "#dc0000",
    pink         = "#ff07ff",
    teal         = "#367588",
}

oldschool.color_groups = function(p)
    return {
        -- basics
        Conceal                               = { fg = p.white, },
        Comment                               = { fg = p.teal, italic = true },
        Constant                              = { fg = p.blue },
        Cursor                                = { fg = p.black, bg = p.blue },
        CursorColumn                          = { fg = p.white, bg = p.dark_grey },
        CursorLine                            = { bg = p.dark_grey, },
        ColorColumn                           = { bg = p.dark_grey },
        CursorLineNr                          = { fg = p.red, bold = true },
        DiagnosticFloatingError               = { fg = p.red },
        DiagnosticSignError                   = { fg = p.red },
        DiagnosticUnderlineError              = { sp = p.red, underline = true },
        DiagnosticVirtualTextError            = { fg = p.red },
        DiagnosticFloatingWarn                = { fg = p.medium_green },
        DiagnosticSignWarn                    = { fg = p.teal },
        DiagnosticUnderlineWarn               = { sp = p.medium_green, underline = true },
        DiagnosticVirtualTextWarn             = { fg = p.teal },
        DiffAdd                               = { fg = p.dark_green, bg = p.black },
        DiffChange                            = { fg = p.white, bg = p.black },
        DiffDelete                            = { fg = p.blue, bg = p.black },
        DiffText                              = { fg = p.yellow, bg = p.black },
        Directory                             = { fg = p.blue, },
        Error                                 = { fg = p.red, bg = p.black },
        ErrorMsg                              = { fg = p.black, bg = p.red },
        FloatBorder                           = { fg = p.bright_green },
        FoldColumn                            = { fg = p.pink, bg = p.black },
        Folded                                = { fg = p.pink, bg = p.black },
        Function                              = { fg = p.white, bold = true },
        Identifier                            = { fg = p.dark_green },
        IncSearch                             = { fg = p.white, bg = p.teal },
        LineNr                                = { fg = p.bright_green },
        MatchParen                            = { fg = p.black, bg = p.teal },
        ModeMsg                               = { fg = p.white, },
        MoreMsg                               = { fg = p.white, },
        NonText                               = { fg = p.white, },
        Normal                                = { fg = p.opaque_white, bg = p.black },
        NormalFloat                           = { bg = p.black },
        Operator                              = { fg = p.pink },
        Pmenu                                 = { fg = p.light_grey, bg = p.black },
        PmenuSbar                             = { fg = p.pink },
        PmenuSel                              = { fg = p.pink, bg = p.black, bold = true },
        PmenuThumb                            = { fg = p.dark_grey, bg = p.pink },
        PreProc                               = { fg = p.dark_green, },
        Question                              = { fg = p.white, },
        Search                                = { fg = p.white, bg = p.teal, italic = true },
        SignColumn                            = { bg = p.black },
        Special                               = { fg = p.yellow, bold = true },
        SpecialKey                            = { fg = p.blue, },
        SpellBad                              = { sp = p.red, undercurl = true },
        SpellCap                              = { fg = p.red, bg = p.black },
        SpellRare                             = { fg = p.bright_green, bg = p.yellow },
        SpellLocal                            = { fg = p.blue, bg = p.white },
        Statement                             = { fg = p.red, bold = true },
        StatusLine                            = { fg = p.white, bg = p.dark_grey },
        StatusLineNC                          = { fg = p.dark_grey, bg = p.white },
        String                                = { fg = p.pink },
        TabLine                               = { fg = p.white, bg = p.dark_grey },
        TabLineFill                           = { fg = p.black, bg = p.white },
        TabLineSel                            = { fg = p.white, },
        Title                                 = { fg = p.white, },
        Todo                                  = { fg = p.bright_green, bg = p.black },
        Type                                  = { fg = p.bright_green },
        Underlined                            = { fg = p.blue, },
        Visual                                = { fg = p.white, bg = p.teal },
        VisualNOS                             = { fg = p.white, bg = p.teal },
        WarningMSG                            = { fg = p.red, },
        WildMenu                              = { fg = p.black, bg = p.yellow },
        WinSeparator                          = { fg = p.medium_green },

        -- PLUGINS

        -- Blink
        BlinkCmpDocBorder                     = { fg = p.bright_green },
        BlinkCmpMenuBorder                    = { fg = p.bright_green },
        BlinkCmpSignatureHelpBorder           = { fg = p.bright_green },

        -- Gitsigns
        GitSignsAdd                           = { fg = p.dark_green, bold = true },
        GitSignsChange                        = { fg = p.yellow, bold = true },
        GitSignsDelete                        = { fg = p.red, bold = true },

        -- IndentBlankline
        IblIndent                             = { fg = p.dark_grey },
        IblScope                              = { fg = p.light_grey, underline = false },

        -- Lazy
        LazyNormal                            = { bg = p.black },
        LazyReasonPlugin                      = { fg = p.pink },
        LazySpecial                           = { fg = p.blue },

        -- Mason
        MasonNormal                           = { bg = p.dark_grey },

        -- Neogit
        NeogitDiffAdd                         = { fg = p.dark_green },

        -- Nvim-tree
        NvimTreeNormal                        = { bg = p.black },
        NvimTreeCursorLine                    = { sp = p.blue, underline = true },

        -- Telescope
        TelescopeBorder                       = { fg = p.bright_green },
        TelescopePreviewLine                  = { bg = p.dark_grey },
        TelescopePreviewMatch                 = { bg = p.dark_grey },
        TelescopePromptBorder                 = { fg = p.pink },
        TelescopePromptTitle                  = { fg = p.bright_green },
        TelescopeResultsComment               = { fg = p.red },
        TelescopeSelection                    = { bg = p.dark_grey },
        TelescopeTitle                        = { fg = p.pink },

        -- LSP & TREESITTER
        ["@lsp.typemod.function.declaration"] = { fg = p.white },
        ["@lsp.typemod.function.decfinition"] = { fg = p.white },
        ["@lsp.type.function"]                = { fg = p.bright_green },

        ["@boolean"]                          = { fg = p.blue, bold = true },
        ["@function.call"]                    = { fg = p.bright_green },
        ["@function.method.call"]             = { fg = p.bright_green },
        ["@markup.bold"]                      = { bold = true },
        ["@markup.heading"]                   = { fg = p.blue, bold = true },
        ["@markup.italic"]                    = { italic = true },
        ["@markup.link.label"]                = { fg = p.bright_green },
        ["@markup.link.url"]                  = { fg = p.blue, underline = true, italic = true },
        ["@markup.strong"]                    = { bold = true },
        ["@module"]                           = { fg = p.white },
        ["@punctuation.bracket"]              = { fg = p.medium_green, bold = true },
        ["@punctuation.delimiter"]            = { fg = p.pink },
        ["@string.special.url"]               = { fg = p.yellow, underline = true, italic = true },
        ["@tag"]                              = { fg = p.bright_green },
        ["@tag.builtin"]                      = { link = "@tag" },
        ["@tag.attribute"]                    = { fg = p.yellow },
        ["@tag.delimiter"]                    = { fg = p.bright_green },
        ["@type.builtin"]                     = { fg = p.bright_green },
        ["@variable"]                         = { fg = p.opaque_white },
        ["@variable.builtin"]                 = { fg = p.white, italic = true },

        -- Org-mode
        ["@org.headline.level1.org"]          = { fg = p.pink, bold = true },
        ["@org.headline.level2.org"]          = { fg = p.blue, bold = true },
        ["@org.headline.level3.org"]          = { fg = p.bright_green, bold = true },
        ["@org.priority.highest.org"]         = { fg = p.bright_green, bold = true },
        ["@org.priority.default.org"]         = { fg = p.yellow, bold = true },
        ["@org.tag.org"]                      = { fg = p.teal, bold = true },

        -- LaTeX
        ["@function.latex"]                   = { fg = p.bright_green, bold = true },
        ["@markup.italic.latex"]              = { fg = p.pink, italic = true },
        ["@module.latex"]                     = { fg = p.pink },
        ["@punctuation.bracket.latex"]        = { fg = p.blue },
        ["@variable.parameter.latex"]         = { fg = p.blue },

        -- Haskell
        ["@constructor.haskell"]              = { fg = p.blue },

        -- Elixir
        ["@string.special.symbol.elixir"]     = { fg = p.blue },
    }
end

-- reset colors and load highlights
oldschool.load = function()
    if vim.g.colors_name then
        vim.cmd("hi clear")
        vim.cmd("syntax reset")
    end

    vim.g.colors_name = "oldschool"

    for group, opts in pairs(oldschool.color_groups(oldschool.colors)) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

-- load the user's options
oldschool.setup = function(opts)
    oldschool.colors = vim.tbl_deep_extend("force", palette, opts or {})
end

return oldschool
