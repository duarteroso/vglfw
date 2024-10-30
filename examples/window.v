module main

import vglfw

fn main() {
	//initialize the GLFW (name conversion causing init() isn't available at V)
	vglfw.initialize()!

	//create the Window
	mut window := vglfw.create_window_desc(vglfw.WindowDesc{
		size: vglfw.Size{
			width: 960
			height: 480
		}
		title: 'MyWindow'
	}, unsafe {nil}, unsafe { nil })!

	//make context current
	window.make_context_current()!

	//run the window loop
	for !(window.should_close()!) {
		/*
			<-- Here you can do the rendering stuff and so on.. -->
		 */
		vglfw.poll_events()!
	}

	//terminate window after close/ending it
	vglfw.terminate()!

	//exit the V program
	exit(0)
}
