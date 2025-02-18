local p = {
    black        = "#000000",
    dark_grey    = "#252525",
    light_grey   = "#666666",
    white        = "#ffffff",
    dark_green   = "#00875f",
    medium_green = "#007200",
    bright_green = "#20de20",
    blue         = "#021aff",
    yellow       = "#e5fb02",
    orange       = "#ff4f00",
    red          = "#dc0000",
    pink         = "#ff07ff",
    teal         = "#367588",
}

return {
    normal = {
        a = { bg = p.black, fg = p.blue, gui = "bold" },
        b = { bg = p.black, fg = p.white },
        c = { bg = p.dark_grey, fg = p.pink }
    },
    insert = {
        a = { bg = p.black, fg = p.bright_green, gui = "bold" },
        b = { bg = p.black, fg = p.white },
        c = { bg = p.dark_grey, fg = p.white }
    },
    visual = {
        a = { bg = p.black, fg = p.pink, gui = "bold" },
        b = { bg = p.black, fg = p.white },
        c = { bg = p.dark_grey, fg = p.black }
    },
    replace = {
        a = { bg = p.black, fg = p.red, gui = "bold" },
        b = { bg = p.black, fg = p.white },
        c = { bg = p.dark_grey, fg = p.white }
    },
    command = {
        a = { bg = p.black, fg = p.yellow, gui = "bold" },
        b = { bg = p.black, fg = p.white },
        c = { bg = p.dark_grey, fg = p.black }
    },
    inactive = {
        a = { bg = p.dark_grey, fg = p.light_grey, gui = "bold" },
        b = { bg = p.dark_grey, fg = p.white },
        c = { bg = p.dark_grey, fg = p.light_grey }
    }
}
