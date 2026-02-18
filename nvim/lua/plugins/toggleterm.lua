return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    size = 15,
    direction = "horizontal",
    open_mapping = [[<c-/>]],
    insert_mappings = true,
    terminal_mappings = true,
  },

  -- chat the goat for this fr
  config = function(_, opts)
    require("toggleterm").setup(opts)

    local augroup = vim.api.nvim_create_augroup("ToggleTermAutoInsert", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, {
      group = augroup,
      callback = function()
        if vim.bo.buftype == "terminal" then
          vim.schedule(function()
            vim.cmd("startinsert")
          end)
        end
      end,
    })
  end,
}

