# Require iOS kit library 
ios = require 'ios-kit'


ratio = .75 - (Screen.size.width * Screen.size.height) / ( 750 * 1334 )


# Ensure hints are enabled
Framer.Extras.Hints.enable()
Framer.Defaults.Animation.curve = 'spring(250,30,0)'



# Screen size based on uploaded image
ratio = .75 - (Screen.size.width * Screen.size.height) / ( 750 * 1334 )
screen_ratio_0 = .75 - (Screen.size.width * Screen.size.height) / ( 1000500 )


# get started view 
# User getting an item from another user, app or system  
get_started = new Layer
	width: 750
	height: 1334
	backgroundColor: "#fff"

button_get_started = new Layer
	midX: Screen.width / 2
	borderRadius: 5
	borderWidth: 0
	style:
			color: "#ffffff"
			textAlign: "center"
			lineHeight: "2"
			fontSize: 7
	backgroundColor: "#ffffff"
	y: 617
	width: 86
	height: 12
	html: "get started"
get_started.addChild(button_get_started)




# configure screen flow
flow = new FlowComponent
flow.showNext(get_started, animate: true)
