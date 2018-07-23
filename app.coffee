ios = require 'ios-kit'
ratio = .75 - (Screen.size.width * Screen.size.height) / ( 750 * 1334 )
# Ensure hints are enabled
Framer.Extras.Hints.enable()
Framer.Defaults.Animation.curve = 'spring(250,30,0)'
ratio = .75 - (Screen.size.width * Screen.size.height) / ( 750 * 1334 )
screen_ratio_0 = .75 - (Screen.size.width * Screen.size.height) / ( 1000500 )
splash = new Layer
	width: 750
	height: 1334
	backgroundColor: "#fff"
get_started = new Layer
	width: 750
	height: 1334
	backgroundColor: "#fff"


button_button = new Layer
	midX: Screen.width / 2
	borderRadius: 5
	borderWidth: 0
	style:
			color: "#ffffff"
			textAlign: "center"
			lineHeight: "2"
			fontSize: 0
	backgroundColor: "#ffffff"
	y: 305
	width: 302
	height: 54
	html: "button"
get_started.addChild(button_button)
flow = new FlowComponent
flow.showNext(splash, animate: true)
