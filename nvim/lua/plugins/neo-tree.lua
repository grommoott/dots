return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = {
			filesystem = {
				commands = {
					delete = function(state)
						vim.ui.input({ prompt = "Are you sure you want to delete these files?" }, function(result)
							if result == "y" or result == "yes" then
								local node = state.tree:get_node()
								local path = node:get_id()
								vim.fn.system("trash " .. vim.fn.fnameescape(path))
							end
						end)
					end,
				},
			},
		},
	},
}
