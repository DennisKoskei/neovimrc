return {
	"sphamba/smear-cursor.nvim",
	opts = {
		-- Smoothness (lower = smoother)
		stiffness = 0.65,
		trailing_stiffness = 0.5,

		distance_stop_animating = 1.2, -- ↑ bigger = stops sooner
		time_interval = 17, -- ~60 FPS
		fps = 60,

		-- Smear look
		smear_length = 15,
		gamma = 2.2,

		-- Performance
		hide_target_hack = true,
	},
}
