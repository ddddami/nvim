-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    -- foo = "fooscript",
  },
  filename = {
    -- ["Foofile"] = "fooscript",
  },
  pattern = {
    -- ["~/%.config/foo/.*"] = "fooscript",
  },
}

-- Tried suppressing copilot.lua error when offline (went with creating a mapping for :Copilot disable)
-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     -- Suppress the specific RPC error message
--     vim.notify = (function(old)
--       return function(msg, ...)
--         if msg and (msg:match "api%.github%.com" or msg:match "RPC error" or msg:match "code_name = internal") then
--           return
--         end
--         return old(msg, ...)
--       end
--     end)(vim.notify())
--   end,
-- })
