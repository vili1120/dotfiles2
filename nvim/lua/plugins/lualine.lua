local colors = {
  blue   = '#89b4fa',
  cyan   = '#79dac8',
  black  = '#080808',
  text  = '#cdd6f4',
  red    = '#ff5189',
  mauve = '#cba6f7',
  base   = '#45475a',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.mauve },
    b = { fg = colors.text, bg = colors.base },
    c = { fg = colors.text },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.text, bg = colors.black },
    b = { fg = colors.text, bg = colors.black },
    c = { fg = colors.text },
  },
}

local color = {
  fg1    = '#282828',
  color2 = '#504945',
  fg2    = '#ddc7a1',
  color3 = '#32302f',
  color4 = '#a89984',
  color5 = '#7daea3',
  color6 = '#a9b665',
  color7 = '#d8a657',
  color8 = '#d3869b',
  color9 = '#ea6962',
}

local gruvbox_material = {
  normal = {
    a = { fg = color.fg1, bg = color.color4, gui = 'bold' },
    b = { fg = color.fg2, bg = color.color2 },
    c = { fg = color.fg2, bg = color.color3 },
  },
  command = { a = { fg = color.fg1, bg = color.color5, gui = 'bold' } },
  inactive = { a = { fg = color.fg2, bg = color.color2 } },
  insert = { a = { fg = color.fg1, bg = color.color6, gui = 'bold' } },
  replace = { a = { fg = color.fg1, bg = color.color7, gui = 'bold' } },
  terminal = { a = { fg = color.fg1, bg = color.color8, gui = 'bold' } },
  visual = { a = { fg = color.fg1, bg = color.color9, gui = 'bold' } },
}

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    require('lualine').setup {
      options = {
        theme = gruvbox_material,
        component_separators = '',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
        lualine_b = { 'filename', 'branch' },
        lualine_c = {
          '%=', --[[ add your center compoentnts here in place of this comment ]]
        },
        lualine_x = {},
        lualine_y = { 'filetype' },
        lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        --lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    }
  end
}
