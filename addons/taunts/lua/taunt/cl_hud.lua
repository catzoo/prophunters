local function createRoboto(s)
	surface.CreateFont( "RobotoHUD-" .. s , {
		font = "Roboto-Bold",
		size = math.Round(ScrW() / 1000 * s),
		weight = 700,
		antialias = true,
		italic = false
	})
	surface.CreateFont( "RobotoHUD-L" .. s , {
		font = "Roboto",
		size = math.Round(ScrW() / 1000 * s),
		weight = 500,
		antialias = true,
		italic = false
	})
end

for i = 5, 50, 5 do
	createRoboto(i)
end
createRoboto(8)

function draw.ShadowText(n, f, x, y, c, px, py, shadowColor)
	draw.SimpleText(n, f, x + 1, y + 1, shadowColor or color_black, px, py)
	draw.SimpleText(n, f, x, y, c, px, py)
end

function draw.EasyPNG(path, x, y, w, h, col)
	surface.SetMaterial(Material(path, "noclamp"))
	if col then
		surface.SetDrawColor(col.r, col.g, col.b, col.a)
	else
		surface.SetDrawColor(255, 255, 255, 255)
	end
	surface.DrawTexturedRect(x, y, w, h)
end
