-- Title: Animating Images
-- Name: Ryoma Scott
-- Course: ICS2O/3C
-- This program displays 3 images moving in different directions,
--with some coloured text and a background.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
scrollSpeed = 3 --Obama
scrollSpeed2 = 6 
scrollSpeed3 = 2

--background image with width and height
local backgroundImage = display.newImageRect("Images/spacey.png", 2048, 1536)

-- character image with width and height
local corndog = display.newImageRect("Images/corndog.png", 150, 150)

-- character image with width and height
local obama = display.newImageRect("Images/obama.png", 150, 150)

-- character image with width and height
local potato = display.newImageRect("Images/potato.png", 150, 150)

--set obama to be transparent
obama.alpha = 0

--set the initial x and y position of the corndog
corndog.x = 0
corndog.y = display.contentHeight/3

--set the initial x and y position of obama
obama.x = 400
obama.y = display.contentHeight*2/3

--set the initial x and y position of the potato
potato.x = 50
potato.y = display.contentHeight*3/3

