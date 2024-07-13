AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()
    self:SetModel("models/props_lab/reciever01b.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)

    local phys = self:GetPhysicsObject()
    if (phys:IsValid()) then
        phys:Wake()
    end
end

function ENT:Use(activator, caller)
    if activator:IsPlayer() and activator:IsValid() and activator:GetMaxArmor() ~= activator:Armor() then
        activator:SetArmor(activator:Armor() + 25)
        self:Remove()
    if activator:Armor() >= activator:GetMaxArmor() then
        activator:SetArmor(activator:GetMaxArmor())
        self:Remove()
        end
    end
end



function ENT:Think()
end