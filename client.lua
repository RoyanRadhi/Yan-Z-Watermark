font = 1 -- untuk list font id ada di sini >>> https://wiki.rage.mp/index.php?title=Fonts_and_Colors

-- Frequency 1
local function RGBRainbow( frequency )
	local result = {}
	local curtime = GetGameTimer() / 1000 -- KECEPATAN PERGANTIAN WARNA (default)

	result.r = math.floor( math.sin( curtime * frequency + 0 ) * 127 + 128 )
	result.g = math.floor( math.sin( curtime * frequency + 2 ) * 127 + 128 )
	result.b = math.floor( math.sin( curtime * frequency + 4 ) * 127 + 128 )
	
	return result
end

-- Draw
Citizen.CreateThread( function()
	while true do
		Wait( 0 )
		
		SetTextFont(font)
		SetTextScale( 0.5, 0.5 ) -- Ukuran watermark (default)
		local rainbow = RGBRainbow( 1 )
		SetTextColour( rainbow.r, rainbow.g, rainbow.b, 255 )
		SetTextOutline()
		SetTextEntry( "STRING" )
		AddTextComponentString( "#IndoSantuy" ) -- UNTUK NAMA SERVER MU
		DrawText( 0.870, 0.050 ) -- POSISI WATERMARK
	end
end )

-- Frequency 2
function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000 -- KECEPATAN PERGANTIAN WARNA (default)

    result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
    result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
    result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

    return result
end

--[[Citizen.CreateThread(function()
	while true do
		Wait(1)

		if bringontherainbows then
			rgb = RGBRainbow(1)
		end

		SetTextFont(font)
		SetTextScale(scale, scale)
		SetTextWrap(0.0, 1.0)
		SetTextCentre(false)
		SetTextDropshadow(2, 2, 0, 0, 0)
		SetTextEdge(1, 0, 0, 0, 205)
		SetTextEntry("STRING")
		AddTextComponentString(servername)
		DrawText(offset.x, offset.y)
	end
end)]]--