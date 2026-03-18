return { -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function() require('conform').format { async = true, lsp_format = 'fallback' } end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local disable_filetypes = { c = true, cpp = true }
      if disable_filetypes[vim.bo[bufnr].filetype] then
        return nil
      else
        return {
          timeout_ms = 500,
          lsp_format = 'fallback',
        }
      end
    end,
    formatters_by_ft = {
      lua = { 'stylua' },

      cs = { 'csharpier' },
      xml = { 'csharpier' },

      html = { 'prettier' },
      json = { 'prettier' },
      markdown = { 'prettier' },
      javascript = { 'prettier' },
      typescript = { 'prettier' },
      css = { 'prettier' },
      scss = { 'prettier' },
      vue = { 'prettier' },
      angular = { 'prettier' },

      handlebars = { 'prettier' },
      jsx = { 'prettier' },
      tsx = { 'prettier' },
      flow = { 'prettier' },
      less = { 'prettier' },
      yaml = { 'prettier' },
      graphql = { 'prettier' },
    },
    formatters = {
      csharpier = {
        command = 'csharpier',
        args = { 'format', '--write-stdout' },
        stdin = true,
      },
    },
  },
}
