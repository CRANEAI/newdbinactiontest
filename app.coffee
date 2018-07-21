ios = require 'ios-kit'
ratio = .75 - (Screen.size.width * Screen.size.height) / ( 750 * 1334 )
# Ensure hints are enabled
Framer.Extras.Hints.enable()
Framer.Defaults.Animation.curve = 'spring(250,30,0)'
ratio = .75 - (Screen.size.width * Screen.size.height) / ( 750 * 1334 )
screen_ratio_0 = .75 - (Screen.size.width * Screen.size.height) / ( 1000500 )
welcome = new Layer
	width: 750
	height: 1334
	backgroundColor: "#fff"

button_sign_in = new Layer
	midX: Screen.width / 2
	borderRadius: 5
	borderWidth: 0
	style:
			color: "#ffffff"
			textAlign: "center"
			lineHeight: "2"
			fontSize: 16
	backgroundColor: "#ffffff"
	y: 136
	width: 105
	height: 32
	html: "sign in"
welcome.addChild(button_sign_in)

input_email = new ios.Field
	width: 550
	height: 70
	borderRadius: 0
	borderWidth: 0
	textConstraints:
		leading: 5
		top: 10
	constraints:
			leading: 51
			top: 208
			width: 275
	placeholder: "email"
welcome.addChild(input_email)

input_password = new ios.Field
	width: 550
	height: 70
	borderRadius: 0
	borderWidth: 0
	textConstraints:
		leading: 5
		top: 10
	constraints:
			leading: 51
			top: 307
			width: 275
	placeholder: "password"
welcome.addChild(input_password)

button_blue_howdy = new Layer
	midX: Screen.width / 2
	borderRadius: 5
	borderWidth: 0
	style:
			color: "rgb(233,249,246 )"
			textAlign: "center"
			lineHeight: "2"
			fontSize: 15
	backgroundColor: "rgb(4,123,249 )"
	y: 417
	width: 296
	height: 52
	html: "howdy"
welcome.addChild(button_blue_howdy)

button_forgot_your_password = new Layer
	midX: Screen.width / 2
	borderRadius: 5
	borderWidth: 0
	style:
			color: "#ffffff"
			textAlign: "center"
			lineHeight: "2"
			fontSize: 6
	backgroundColor: "#ffffff"
	y: 526
	width: 153
	height: 14
	html: "forgot your password?"
welcome.addChild(button_forgot_your_password)

status_bar_status_bar = new ios.StatusBar
	carrier:"Crane"
	network:"5G"
	battery:60
	style:"dark"
	bluetooth: false
welcome.addChild(status_bar_status_bar)

flow = new FlowComponent
flow.showNext(welcome, animate: true)
