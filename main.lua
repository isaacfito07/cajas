local fisica = require("physics")
fisica.start()

local fondo = display.newImage("background.jpg")
local pasto = display.newImage("grass.png")
local caja = display.newImage("caja.png")
local nave = display.newImage("nave.png")

fondo.width= display.contentWidth
fondo.height= display.contentHeight
fondo.x= display.contentCenterX
fondo.y = display.contentCenterY

pasto.width= display.contentWidth
pasto.height= 70
pasto.x = display.contentCenterX
pasto.y= 500

caja.x = display.contentCenterX
caja.y =display.contentScaleX

nave.x = display.contentCenterX
nave.y = display.contentCenterY


--FUNCIONES
local function moverNave(e)
 nave.x=e.x
 nave.y=e.y
end



--EVENTOS
nave:addEventListener("touch", moverNave)

--FISICA
fisica.addBody(caja, "dynamic")
fisica.addBody(pasto,"static")
fisica.addBody(nave, "kinestesics")