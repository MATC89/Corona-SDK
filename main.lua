-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- nova tela
local composer = require ("composer")
local scene = composer.newScene()

--TextField
local display = require ("display")
local native = require ("native")
txtField = native.newTextField( display.contentCenterX,30, 200, 30 )

-- Fundo
local Fundo = display.newImage("fundo1.2.jpg", true)
 Fundo.x = display.contentWidth / 2
 Fundo.y = display.contentHeight / 2

-- Botão 'ok'
local widget = require( "widget" )

local function Botao1Evento( event )
    print( "Teste do Botao" )  
    composer.gotoScene("tela2", "fade", 400 )
end

local Botao1 = widget.newButton(
    {
        left = 130,
        top = 50,
        id = "Botao1",
        label = "Ok",
        onEvent = Botao1Evento
    }
)
Botao1.strokeColor = { default={ 50, 50, 0 }, over={ 0.4, 0.1, 0.2 } }


-- "scene:show()"
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        print("Willlllll")
    elseif ( phase == "did" ) then
		print("didddddd")

    end
end


function scene:create (event)
	local sceneGroup = self.view
end

-- "scene:destroy()"
function scene:destroy( event )

    local sceneGroup = self.view

    -- Called prior to the removal of scene's view ("sceneGroup").
    -- Insert code here to clean up the scene.
    -- Example: remove display objects, save state, etc.
end


-- -------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "destroy", scene )

-- -------------------------------------------------------------------------------

return scene










