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
txtField = native.newTextField( display.contentCenterX,200, 200, 30 )

-- Fundo
local Fundo = display.newImage("fundo1.png", true)
 Fundo.x = display.contentWidth / 2
 Fundo.y = display.contentHeight / 2


-- Botão 'ok'
local widget = require( "widget" )

local function Botao1Evento( event )
    print( "Teste do Botao" )  
    composer.gotoScene("tela2", "fade", 400 )

    display.remove(group)
    if txtField ~= nil  then
        txtField:removeSelf()
        txtField = nil
        print("oieeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee 1")
    end
    if botao1 ~= nil then
        botao1:removeSelf()
        botao1 = nil 
        print("agoraaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa 2")   	
    end

end

local botao1 = widget.newButton(
    {
        left = 130,
        top = 250,
        id = "botao1",
        label = "Enviar",
        labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0, 0.5 } },
        defaultFile = "buttonBlueSmall.png",
        overFile = "buttonBlueSmallOver.png",
        onEvent = Botao1Evento
        
    }
)

--Botao1.strokeColor = { default={ 50, 50, 0 }, over={ 0.4, 0.1, 0.2 } }

local group = display.newGroup()
group:insert(botao1)
group:insert(txtField)

-- "scene:show()"
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        print("Willlllll")
    elseif ( phase == "did" ) then
		print("didddd &&& dd")

    end
end


function scene:create (event)
    print( "opa! create!" )
	local sceneGroup = self.view
end

-- "scene:destroy()"
function scene:destroy( event )
    print( "opa! destroy!" )
    local sceneGroup = self.view
    return true
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










