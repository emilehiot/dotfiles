return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-telescope/telescope-file-browser.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local telescope = require("telescope")
		telescope.setup({
			extensions = {
				file_browser = {}
			}
		})
		telescope.load_extension("file_browser")
		-- Raccourcis :
    -- espace + ff pour chercher dans les fichiers du dossier en question
		-- espace + fb pour chercher dans l'architecture + création fichier, rename, move, etc
		vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
		vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>")
	end
}
