local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  ensure_installed = { "bash", "javascript", "json", "lua", "python", "typescript", "tsx", "css", "yaml", "markdown",
    "markdown_inline" },         -- one of "all" or a list of languages
  ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,               -- needed for cool colors in jsx
  },
})
