local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    return
end

require("lualine").setup {
  options = {
    icons_enabled = true,
    theme = "onedark",
    component_separators = { left = "", right = ""},
    section_separators = { left = "", right = ""},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {
      { "mode", separator = { left = "" }, right_padding = 2 },
    },
    lualine_b = {"filename"},
    lualine_c = {},
    lualine_d = {},
    lualine_x = {},
    lualine_y = { "diagnostics", "diff", "branch" },
    lualine_z = {
        { "filetype", separator = { right = "" }, left_padding = 2 },
    }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {"filename"},
    lualine_x = {"location"},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
