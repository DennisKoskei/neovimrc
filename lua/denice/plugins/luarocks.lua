return { -- Luarocks Package Manager NOTE: Look for a way to disable this plugin
	"vhyrro/luarocks.nvim",
	config = true,
	opts = {
		rocks = { hererocks = false }, -- specifies a list of rocks to install
	},
}
