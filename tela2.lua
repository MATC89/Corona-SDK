---------------------------
--
-- Segunda Activity
--
---------------------------
local display = require ("display")
local composer = require ("composer")
local scene = composer.newScene()
local Fundo = display.newImage("fundo2.1.jpg", true)
Fundo.x = display.contentWidth / 2
Fundo.y = display.contentHeight / 2
print ("nova tela")

function scene:show( event )

	local phase = event.phase

    local sceneGroup = self.view
    local phase = event.phase
	composer.removeScene( "main" )
	composer.removeScene("native")
    if ( phase == "will" ) then
        print("Willlllll tela 2")
    elseif ( phase == "did" ) then
		print("didddddd tela2 ")

    end
end

function scene:create (event)
	local sceneGroup = self.view
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )

return scene
