local M = {}
function M.startMD()
  local buf = vim.api.nvim_buf_get_name(0)
  print("Starting server with file" .. buf)
  os.execute("mdoom-preview " .. buf)
  -- Check if buf is a .md file
  -- manage error and then exec
end

return M
