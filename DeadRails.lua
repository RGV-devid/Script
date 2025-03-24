local Entity = {"Walker","Runner","Banner","Wolf","Werewolf","Vampire","Outlaw","Unicorn","Horse"}

local Interact = {
  AutoInteractMoneyBag = false,
  AutoInteractSnakeOil = false,
  AutoInteractBandage = false,
  AutoInteractRevolverAmmo = false,
  AutoInteractShotgunAmmo = false,
  AutoInteractRifleAmmo = false,
  AutoInteractRevolver = false,
  AutoInteractNavyRevolver = false,
  AutoInteractMauserC96 = false,
  AutoInteractShotgun = false,
  AutoInteractRifle = false,
  AutoInteractBoltActionRifle = false,
  AutoInteractElectrocutioner = false
}
local Prompt = {
  InstanceInteract = false,
  ThrougherInteract = false,
  HigherInteract = false
}
local Doctor = {
  HealthUseBandage = 0,
  AutoUseBandage = false,
  HealthUseSnakeOil = 0,
  AutoUseSnakeOil = false
}
local Gun = {
  ReloadTime = 0,
  AutoReload = false,
  FastShootTime = 0,
  FastShoot = false
}
local Enemies = {
  SizeHitbox = Vector3.new(0,0,0),
  EnabledHitbox = false,
  SizeHeadHitbox = Vector3.new(0,0,0),
  EnabledHeadHitbox = false
}
local Players = {
  SetFOV = 0,
  FOV = false,
  Infjump = false,
  Noclip = false,
  MinZoom = 0,
  MaxZoom = 0,
  ThirdPerson = false
}
  
