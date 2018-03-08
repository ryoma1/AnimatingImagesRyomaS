-- Title: Animating Images
-- Name: Ryoma Scott
-- Course: ICS2O/3C
-- This program displays 3 images moving in different directions,
--with some coloured text and a background.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
scrollSpeed = 3 --Obama
scrollSpeed2 = 6 --corndog
scrollSpeed3 = 2 --potato

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
corndog.x = 1000
corndog.y = display.contentHeight/3

--set the initial x and y position of obama
obama.x = 400
obama.y = display.contentHeight*2/3

--set the initial x and y position of the potato
potato.x = 50
potato.y = display.contentHeight*3/3

--Function: MoveObama
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of Obama
local function MoveObama(event)
	--add the scroll speed to the x-value of obama
	obama.x = obama.x + scrollSpeed

	-- change the transparency of obama every time he moves so that he fades in
	obama.alpha = obama.alpha + 0.01

end

-- MoveObama will be called over and over again
Runtime:addEventListener("enterFrame", MoveObama)


	--Function: MoveCorndog
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the corndog
local function MoveCorndog(event)
	--add the scroll speed to the x-value of the corndog
	corndog.x = corndog.x - scrollSpeed2

	-- corndog grows
	corndog:scale(1 + 0.01, 1 + 0.01)
end

-- MoveCorndog will be called over and over again
Runtime:addEventListener("enterFrame", MoveCorndog)

--Function: MovePotato
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the potato
local function MovePotato(event)
	--add the scroll speed to the x-value of the potato
	potato.x = potato.x + scrollSpeed3
	--add the scroll speed to the y-value of the potato
	potato.y = potato.y - scrollSpeed3

	--the potato shall spin
	potato:rotate(10)

end

-- MovePotato will be called over and over again
Runtime:addEventListener("enterFrame", MovePotato)
