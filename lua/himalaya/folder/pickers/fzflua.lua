local M = {}

local fzf_lua = require("fzf-lua")

M.select = function(cb, folders)
	local folder_names = {}
	for _, item in ipairs(folders) do
		table.insert(folder_names, item.name)
	end

	local opts = {}
	opts.prompt = "Folders> "
	opts.actions = {
		["default"] = function(selected)
			vim.fn[cb](selected[1])
		end,
	}
	fzf_lua.fzf_exec(folder_names, opts)
end

return M
