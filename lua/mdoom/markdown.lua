local M = {}
function M.startMD()
  local buf = vim.api.nvim_buf_get_name(0)
  print("Starting server with file" .. buf)
  vim.cmd("AsyncRun mdoom-preview " .. buf)
  -- Check if buf is a .md file
  -- manage error and then exec
end

function M.stopMD()
  -- Stop md server
  vim.cmd("AsyncStop")
  print("Server stop")
end

return M
