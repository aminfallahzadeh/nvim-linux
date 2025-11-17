return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,

		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
				integrations = {
					telescope = { enabled = true },
				},
				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
					keywords = { "italic" },
					loops = { "italic" },
					booleans = { "italic" },
				},
			})

			vim.cmd.colorscheme("catppuccin")

			-- trasparent plugins
			local hl = vim.api.nvim_set_hl

			hl(0, "NormalFloat", { bg = "none" })
			hl(0, "FloatBorder", { bg = "none", fg = "#89b4fa" })

			hl(0, "WhichKeyFloat", { bg = "none" })
			hl(0, "WhichKeyBorder", { bg = "none", fg = "#89b4fa" })

			hl(0, "LazyNormal", { bg = "none" })
			hl(0, "LazyBorder", { bg = "none", fg = "#89b4fa" })

			hl(0, "NoiceCmdlinePopup", { bg = "none" })
			hl(0, "NoiceCmdlinePopupBorder", { bg = "none", fg = "#89b4fa" })
			hl(0, "NoicePopup", { bg = "none" })
			hl(0, "NoicePopupBorder", { bg = "none", fg = "#89b4fa" })
			hl(0, "NoiceHover", { bg = "none" })
			hl(0, "NoiceHoverBorder", { bg = "none", fg = "#89b4fa" })

			-- blink.cmp
			-- hl(0, "BlinkCmpMenu", { bg = "none" })
			-- hl(0, "BlinkCmpMenuBorder", { bg = "none", fg = "#89b4fa" })
			-- hl(0, "BlinkCmpSource", { bg = "none" })
			-- hl(0, "BlinkCmpDocBorder", { bg = "none", fg = "#89b4fa" })
			-- hl(0, "BlinkCmpDocSeparator", { bg = "none", fg = "#89b4fa" })
		end,
	},
}
