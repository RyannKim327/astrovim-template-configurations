return {
  { "tpope/vim-dadbod" },
  {
    "kristijanhusak/vim-dadbod-ui",
    cmd = { "DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer" },
    init = function()
      -- Set up your vim-dadbod-ui configuration here
      vim.g.db_ui_save_location = vim.fn.stdpath "config" .. "/db_ui"
    end,
  },
  {
    "kristijanhusak/vim-dadbod-completion",
    ft = { "sql", "mysql", "plsql" },
    config = function()
      -- Optional: Auto-completion setup
    end,
  },
}
