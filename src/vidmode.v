module vglfw

import glfw

// VideoMode represents the video mode of a monitor
pub struct VideoMode {
pub:
	width        int
	height       int
	red_bits     int
	green_bits   int
	blue_bits    int
	refresh_rate int
}

// create_vidmode creates a VideoMode instance
pub fn create_vidmode(data voidptr) VideoMode {
	raw := unsafe { &glfw.GLFWvidmode(data) }
	return VideoMode{
		width:        raw.width
		height:       raw.height
		red_bits:     raw.redBits
		green_bits:   raw.greenBits
		blue_bits:    raw.blueBits
		refresh_rate: raw.refreshRate
	}
}
