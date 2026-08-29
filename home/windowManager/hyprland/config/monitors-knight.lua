hl.monitor({
	output = "DP-1",
	mode = "3840x2160@160.01",
	position = "0x0",
	scale = 1.67,
})

hl.monitor({
	output = "eDP-1",
	disabled = true,
})

hl.monitor({
	output = "HDMI-A-1",
	transform = 3,
	position = "-1152x-400",
	scale = 1.25,
	mode = "2560x1440@144",
})
