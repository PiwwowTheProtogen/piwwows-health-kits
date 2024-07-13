include("shared.lua")

function ENT:Draw()
    self:DrawModel()

    local ang = self:GetAngles()
    local pos = self:GetPos() + Vector(0, 0, 10) 

    ang:RotateAroundAxis(ang:Forward(), 90)
    ang:RotateAroundAxis(ang:Right(), -90)

if LocalPlayer():GetPos():DistToSqr( self:GetPos() ) <= 100000 then
    cam.Start3D2D(pos, ang, 0.25)
        draw.SimpleTextOutlined("+50 Armor", "HudDefault", 0, 0, Color(255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color(0,0,0,255))
    cam.End3D2D()
     return
    end
end