-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- nova tela
local composer = require ("composer")
local scene = composer.newScene()

--TextField
local native = require ("native")
txtField = native.newTextField( display.contentCenterX,200, 200, 30 )

-- Fundo
local display = require ("display")
local Fundo = display.newImage("fundo1.png", true)
 Fundo.x = display.contentWidth / 2
 Fundo.y = display.contentHeight / 2

-- Botão 'ok'
local function Botao1Evento( event )
    
    composer.gotoScene("tela2", "fade", 400 )

    if txtField ~= nil  then
        txtField:removeSelf()
        txtField = nil        
    end
    if botao1 ~= nil then
        botao1:removeSelf()
        botao1 = nil         
    end

end

local widget = require( "widget" )
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
return scene