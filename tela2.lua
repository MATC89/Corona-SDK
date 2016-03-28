---------------------------
--
-- Segunda Scene
--
---------------------------
local composer = require ("composer")
local scene = composer.newScene()
local display = require ("display")
local fundo = display.newImage("fundo2.png", true)
fundo.x = display.contentWidth / 2
fundo.y = display.contentHeight / 2

local myText = display.newText( txtField.text, display.contentCenterX, display.contentCenterY, 200, display.contentHeight * 0.5, native.systemFont, 50)
myText:setFillColor( 0, 0, 0 )


return scene
