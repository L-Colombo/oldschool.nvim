# Oldschool.nvim

A simple, minimal, oldschool dark theme for Neovim. It features a fully black background and vibrant, high-contrast colors.

## Default Palette
This is the default palette. To override it, see the Installation section.

| name         | color                                                                    |
|--------------|--------------------------------------------------------------------------|
| black        | <span style="background-color: #000000; color: #ffffff">"#000000"</span> |
| dark_grey    | <span style="background-color: #252525; color: #ffffff">"#252525"</span> |
| light_grey   | <span style="background-color: #666666; color: #ffffff">"#666666"</span> |
| opaque_white | <span style="background-color: #cccddd; color: #000000">"#cccddd"</span> |
| white        | <span style="background-color: #ffffff; color: #000000">"#ffffff"</span> |
| dark_green   | <span style="background-color: #00875f; color: #ffffff">"#00875f"</span> |
| medium_green | <span style="background-color: #007200; color: #ffffff">"#007200"</span> |
| bright_green | <span style="background-color: #20de20; color: #ffffff">"#20de20"</span> |
| blue         | <span style="background-color: #021aff; color: #ffffff">"#021aff"</span> |
| yellow       | <span style="background-color: #e5fb02; color: #ffffff">"#e5fb02"</span> |
| red          | <span style="background-color: #dc0000; color: #ffffff">"#dc0000"</span> |
| pink         | <span style="background-color: #ff07ff; color: #ffffff">"#ff07ff"</span> |
| teal         | <span style="background-color: #367588; color: #ffffff">"#367588"</span> |


## Installation

### Using `lazy.nvim`

You can install using `lazy.nvim` by simply adding to your configuration file(s):

```lua
{
    "L-Colombo/oldschool.nvim",
    config = true,
    -- to ovverride palette colors:
    -- opts = { <color>: "<hex value>"}
}
```


## Lualine

To use `Oldschool.nvim` with [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) just set the theme option either to `auto` or `oldschool`.

## Gallery

### Haskell
![Haskell](./assets/haskell.png "Haskell")

### Rust
![Rust](./assets/rust.png "Rust")

### Lua
![Lua](./assets/lua.png "Lua")
