local M = {}
function M.startMd()
  local buf = vim.api.nvim_buf_get_name(0)
  print("Starting server with file" .. buf)
end

return M
