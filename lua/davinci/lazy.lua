local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup("davinci.plugins", {
  defaults = { lazy = true },
  -- install = { colorscheme = { "dracula", "tokyonight" } },
  checker = { enabled = true },
  dev = {
    path = "~/.local/share/nvim/projects",
    fallback = false,
  },
  ui = { border = "rounded" },
  performance = {
    cache = {
      enabled = true,
    },
    rtp = {
      disabled_plugins = {
        -- "matchit",
        -- "matchparen",
        --"netrwPlugin",
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
  build = {
    -- Plugins can provide a `build.lua` file that will be executed when the plugin is installed
    -- or updated. When the plugin spec also has a `build` command, the plugin's `build.lua` not be
    -- executed. In this case, a warning message will be shown.
    warn_on_override = false,
  },

  change_detection = {
    -- automatically check for config file changes and reload the ui
    enabled = false,
    notify = false, -- get a notification when changes are found
  },

  debug = false,
})
