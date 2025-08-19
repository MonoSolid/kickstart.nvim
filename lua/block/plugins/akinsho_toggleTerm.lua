return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    -- Start commonly used terminals at first toggle.
    local isInit = false
    local function runCommonTerminals()
      if isInit then
        return
      end
      isInit = true
      vim.cmd ':2ToggleTerm'
      vim.cmd ':2ToggleTerm'
      vim.cmd ':1TermExec cmd="lazygit"'
      vim.cmd ':1ToggleTerm'
    end

    require('toggleterm').setup {
      open_mapping = [[<c-\>]],
      direction = 'float',
      float_opts = {
        border = 'curved',
      },
      on_open = runCommonTerminals,
    }
  end,
}
