local M = {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local startify = require("alpha.themes.startify")
		-- available: devicons, mini, default is mini
		-- if provider not loaded and enabled is true, it will try to use another provider
		startify.file_icons.provider = "devicons"
		startify.file_icons.enabled = true
		startify.file_icons.highlight = true
		-- startify.section.position = "center"
		startify.section.header.val = {
			[[                .-"""-.               ]],
			[[               / .===. \              ]],
			[[               \/ 6 6 \/              ]],
			[[               ( \___/ )              ]],
			[[    _______ooo__\_____/___________    ]],
			[[   /                              \   ]],
			[[  | Welcome cai jin. Do your best. |  ]],
			[[   \____________________ooo_______/   ]],
			[[               |  |  |                ]],
			[[               |_ | _|                ]],
			[[               |  |  |               ]],
			[[               |__|__|               ]],
			[[               /-'Y'-\                ]],
			[[              (__/ \__)  caijin ♥️    ]],
		}
		-- startify.config.opts.position = "center"
		-- startify.section.header.opts.position = "center"
		-- startify.section.mru.opts={position = "center"}
		-- startify.section.mru_cwd.opts={position = "center"}
		-- startify.section.bottom_buttons.opts={position = "center"}
		alpha.setup(startify.config)
	end,
}

return { M }
