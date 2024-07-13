AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()
    self:SetModel("models/weapons/w_medkit.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)

    local phys = self:GetPhysicsObject()
    if (phys:IsValid()) then
        phys:Wake()
    end
end

function ENT:Use(activator, caller)
    if activator:IsPlayer() and activator:IsValid() and activator:GetMaxHealth() ~= activator:Health() then
        activator:SetHealth(activator:Health() + 50)
        self:Remove()
    if activator:Health() >= activator:GetMaxHealth() then
        activator:SetHealth(activator:GetMaxHealth())
        self:Remove()
        end
    end
end


function ENT:Think()
end