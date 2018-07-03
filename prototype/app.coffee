
Framer.Device.background.backgroundColor = "#f8f8f8"

# to get device screen Rendered Pixels
screen_width = Screen.width   # Rendered Pixels
screen_height = Screen.height # Rendered Pixels

Framer.Defaults.Layer.force2d = true


# Ensure hints are enabled
# Framer.Extras.Hints.enable()
# Pull in IOS kit 
ios = require 'ios-kit'

# Preload with Crane
Framer.Extras.Preloader.setLogo("https://crane.ai/assets/img/logo.png")

Framer.Defaults.Animation.curve = 'spring(250,30,0)'





screenshot_w_0 = 750
screenshot_h_0 = 1334

screen_ratio_0 =  screen_width  /  screenshot_w_0 

Framer.Device.contentScale = screen_ratio_0



page_0 = new Layer
  width: Screen.width
  height: Screen.height
  backgroundColor: 'rgb(  251, 251, 251 )'
  originY: 0
  originX: 0

  
bg_clone_0 = new Layer
  x: 0
  y: 0
  width: 750
  height: 1334
  opacity: 1
  image: "http://core.crane.ai:5000/uploads/directfromsketch.png"

  #has cv3#has cv3 0 records
input_0_0 = new ios.Field
    placeholderText:"password "
    borderRadius: 0
    borderWidth: 0
    width: 125
    height: 22
    textConstraints:
      leading: 5
      top: 10
    constraints:
      top: 614
      leading:102
      width: 125

  
input_2_0 = new ios.Field
    placeholderText:"password "
    borderRadius: 0
    borderWidth: 0
    width: 125
    height: 22
    textConstraints:
      leading: 5
      top: 10
    constraints:
      top: 614
      leading:102
      width: 125

  
button_4_0 = new Layer
  x: 224
  y: 1052
  width: 305
  height: 28
  backgroundColor: "rgba(255,0,0,0.2)"
  image: "undefined"

  
input_8_0 = new ios.Field
    placeholderText:"Email "
    borderRadius: 0
    borderWidth: 0
    width: 68
    height: 22
    textConstraints:
      leading: 5
      top: 10
    constraints:
      top: 416
      leading:102
      width: 68

  

page_0.addChild(bg_clone_0)

page_0.addChild(input_0_0)

page_0.addChild(input_2_0)

page_0.addChild(button_4_0)

page_0.addChild(input_8_0)
# Create FlowComponent for navigating between screens
flow = new FlowComponent
  width: screenshot_w_0
  height: screenshot_h_0
  scale: screen_ratio_0
  originY: 0
  originX: 0
flow.centerX()

flow.showNext(page_0, animate: true)


