---------------------------
--
-- Segunda Scene
--
---------------------------
local display = require ("display")

local composer = require ("composer")
local scene = composer.newScene()
local fundo = display.newImage("fundo2.png", true)
fundo.x = display.contentWidth / 2
fundo.y = display.contentHeight / 2
print ("nova tela")
local myText = display.newText( txtField.text, display.contentCenterX, display.contentCenterY, 200, display.contentHeight * 0.5, native.systemFont, 50)
myText:setFillColor( 0, 0, 0 )



function scene:show( event )

	local phase = event.phase

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        print("Willlllll tela 2")
    elseif ( phase == "did" ) then
		print("didddddd tela2 ")

    end
end

function scene:create (event)
	local sceneGroup = self.view
end
function scene:destroy( event )
	print( "destroy main..." )
	composer.removeScene( "main" )
	composer.removeScene( "txtField" )
	composer.removeScene( "botao1" )
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "destroy", scene )
return scene
