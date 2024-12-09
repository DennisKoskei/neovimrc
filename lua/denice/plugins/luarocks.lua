return { -- Luarocks Package Manager NOTE: Look for a way to disable this plugin
	"vhyrro/luarocks.nvim",
	priority = 1000, --Very high priority is requried, luarocks.nvim should run as first plugin in your config
	config = true,
	opts = {
		rocks = { hererocks = false }, -- specifies a list of rocks to install
	},
}
