local gl = require('galaxyline')
local gls = gl.section
local utils = require 'utils'

local u = utils.u

local colors = {
  bg = '#333746',
  bglight = '#484b58',
  fg = '#e1e1e6',
  yellow = '#e7de79',
  cyan = '#a1efe4',
  darkblue = '#081633',
  green = '#67e480',
  orange = '#FF8800',
  purple = '#988bc7',
  magenta = '#939ede',
  grey = '#e1e1e6',
  blue = '#78d1e1',
  red = '#ed4556',
  pink = '#ff79c6',
}

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end


local mode_color = function()
  local mode_colors = {
    [110] = colors.magenta,
    [105] = colors.green,
    [99] = colors.fg,
    [116] = colors.fg,
    [118] = colors.fg,
    [22] = colors.fg,
    [86] = colors.fg,
    [82] = colors.fg,
    [115] = colors.fg,
    [83] = colors.fg,
  }

  mode_color = mode_colors[vim.fn.mode():byte()]
  if mode_color ~= nil then
    return mode_color
  else
    return colors.purple
  end
end

local icons = {
  locker = u 'f023',
  unsaved = u 'f693',
  dos = u 'e70f',
  unix = u 'f17c',
  mac = u 'f179',
  lsp_warn = u 'f071',
  lsp_error = u 'f46e',
}

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

gls.left[1] = {
    ViMode = {
        provider = function()
            local aliases = {
                [110] = 'NORMAL',
                [105] = 'INSERT',
                [99] = 'COMMAND',
                [116] = 'TERMINAL',
                [118] = 'VISUAL',
                [22] = 'V-BLOCK',
                [86] = 'V-LINE',
                [82] = 'REPLACE',
                [115] = 'SELECT',
                [83] = 'S-LINE'
            }
            vim.api.nvim_command('hi GalaxyViMode guibg=' .. mode_color())
          alias = aliases[vim.fn.mode():byte()]
          if alias ~= nil then
            mode = alias
          end
          return '  ' .. mode .. ' '
        end,
          highlight = {colors.bg, colors.bg, 'bold'}
    }
}

gls.left[3] = {
  Space = {
    provider = function () return ' ' end,
    highlight = {colors.bg, colors.bg}
  }
}

gls.left[4] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
  },
}

gls.left[5] = {
  FileName = {
    provider = {'FileName'},
    condition = buffer_not_empty,
    separator = ' ',
    separator_highlight = {colors.bg,colors.bg},
    highlight = {colors.fg,colors.bg}
  }
}

gls.left[6] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = buffer_not_empty,
    highlight = {colors.fg,colors.bg},
  }
}

gls.left[7] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = buffer_not_empty,
    highlight = {colors.fg,colors.bg},
  }
}

gls.left[8] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.green,colors.bg},
  }
}
gls.left[9] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.orange,colors.bg},
  }
}
gls.left[10] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.red,colors.bg},
  }
}
gls.left[11] = {
  LeftEnd = {
    provider = function() return '' end,
    separator = '',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.purple,colors.bg}
  }
}
gls.left[12] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}
gls.left[13] = {
  Space = {
    provider = function () return '' end
  }
}
gls.left[14] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
}
gls.right[1] = {
  FileFormat = {
    provider = function()
      if not buffer_not_empty() then return ' ' end
      local icon = icons[vim.bo.fileformat] or ''
      return string.format(' %s %s  ',  vim.bo.fileformat, icon)
    end,
    condition = buffer_not_empty,
    highlight = {colors.fg, colors.bglight},
    separator = ' ',
    separator_highlight = {colors.fg, colors.bglight},
  }
}

gls.right[2] = {
  PerCent = {
    separator = ' ',
    separator_highlight = {colors.magenta, colors.magenta},
    provider = 'LinePercent',
    highlight = {colors.bg,colors.magenta},
  }
}

gls.right[3] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = '|',
    separator_highlight = {colors.bg,colors.magenta},
    highlight = {colors.bg,colors.magenta},
  },
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.fg,colors.bg}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.fg,colors.bglight}
  }
}
