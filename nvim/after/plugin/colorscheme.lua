-- Change any default settings in setup{} block
-- List of settings: https://github.com/navarasu/onedark.nvim#default-configuration


onedark = require('onedark')

onedark.setup {
	style = 'darker',
	transparent = true,
	term_colors = true,
}

onedark.load()
