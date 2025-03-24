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
  
game:GetService("RunService").RenderStepped:Connect(function()
    if Interact.AutoInteractMoneyBag then
      if workspace.RuntimeItems:FindFirstChild("Moneybag") then
        fireproximityprompt(workspace.RuntimeItems.Moneybag.MoneyBag.CollectPrompt)
      end
    end
    if Interact.AutoInteractSnakeOil then
      if workspace.RuntimeItems:FindFirstChild("Snake Oil") then
        local args = {
              [1] = workspace.RuntimeItems:FindFirstChild("Snake Oil")
            }
            game:GetService("ReplicatedStorage").Remotes.Tool.PickUpTool:FireServer(unpack(args))
      end
    end
    if Interact.AutoInteractBandage then
      if workspace.RuntimeItems:FindFirstChild("Bandage") then
        local args = {
              [1] = workspace.RuntimeItems:FindFirstChild("Bandage")
            }
            game:GetService("ReplicatedStorage").Remotes.Tool.PickUpTool:FireServer(unpack(args))
      end
    end
    if Interact.AutoInteractRevolverAmmo then
      if workspace.RuntimeItems:FindFirstChild("RevolverAmmo") then
        local args = {
              [1] = workspace.RuntimeItems:FindFirstChild("RevolverAmmo")
            }
            game:GetService("ReplicatedStorage").Packages.RemotePromise.Remotes.C_ActivateObject:FireServer(unpack(args))
      end
    end
    if Interact.AutoInteractShotgunAmmo then
      if workspace.RuntimeItems:FindFirstChild("ShotgunShells") then
        local args = {
              [1] = workspace.RuntimeItems:FindFirstChild("ShotgunShells")
            }
            game:GetService("ReplicatedStorage").Packages.RemotePromise.Remotes.C_ActivateObject:FireServer(unpack(args))
      end
    end
    if Interact.AutoInteractRifleAmmo then
      if workspace.RuntimeItems:FindFirstChild("RifleAmmo") then
        local args = {
              [1] = workspace.RuntimeItems:FindFirstChild("RifleAmmo")
            }
            game:GetService("ReplicatedStorage").Packages.RemotePromise.Remotes.C_ActivateObject:FireServer(unpack(args))
      end
    end
    if Interact.AutoInteractRevolver then
      if workspace.RuntimeItems:FindFirstChild("Revolver") then
        local args = {
              [1] = workspace.RuntimeItems:FindFirstChild("Revolver")
            }
            game:GetService("ReplicatedStorage").Remotes.Tool.PickUpTool:FireServer(unpack(args))
      end
    end
    if Interact.AutoInteractNavyRevolver then
      if workspace.RuntimeItems:FindFirstChild("Navy Revolver") then
        local args = {
              [1] = workspace.RuntimeItems:FindFirstChild("Navy Revolver")
            }
            game:GetService("ReplicatedStorage").Remotes.Tool.PickUpTool:FireServer(unpack(args))
      end
    end
    if Interact.AutoInteractMauserC96 then
      if workspace.RuntimeItems:FindFirstChild("Mauser C96") then
        local args = {
              [1] = workspace.RuntimeItems:FindFirstChild("Mauser C96")
            }
            game:GetService("ReplicatedStorage").Remotes.Tool.PickUpTool:FireServer(unpack(args))
      end
    end
    if Interact.AutoInteractShotgun then
      if workspace.RuntimeItems:FindFirstChild("Shotgun") then
        local args = {
              [1] = workspace.RuntimeItems:FindFirstChild("Shotgun")
            }
            game:GetService("ReplicatedStorage").Remotes.Tool.PickUpTool:FireServer(unpack(args))
      end
    end
    if Interact.AutoInteractRifle then
      if workspace.RuntimeItems:FindFirstChild("Rifle") then
        local args = {
              [1] = workspace.RuntimeItems:FindFirstChild("Rifle")
            }
            game:GetService("ReplicatedStorage").Remotes.Tool.PickUpTool:FireServer(unpack(args))
      end
    end
    if Interact.AutoInteractBoltActionRifle then
      if workspace.RuntimeItems:FindFirstChild("Bolt Action Rifle") then
        local args = {
              [1] = workspace.RuntimeItems:FindFirstChild("Bolt Action Rifle")
            }
            game:GetService("ReplicatedStorage").Remotes.Tool.PickUpTool:FireServer(unpack(args))
      end
    end
    if Interact.AutoInteractElectrocutioner then
      if workspace.RuntimeItems:FindFirstChild("Electrocutioner") then
        local args = {
              [1] = workspace.RuntimeItems:FindFirstChild("Electrocutioner")
            }
            game:GetService("ReplicatedStorage").Remotes.Tool.PickUpTool:FireServer(unpack(args))
      end
    end
    if Prompt.InstanceInteract then
      for i,v in ipairs(workspace:GetDescendants()) do
        if v:FindFirstChildWhichIsA("ProximityPrompt") then
          v.HoldDuration = 0
        end
      end
    end
    if Prompt.ThrougherInteract then
      for i,v in ipairs(workspace:GetDescendants()) do
        if v:FindFirstChildWhichIsA("ProximityPrompt") then
          v.RequiresLineOfSight = false
        end
      end
    end
    if Prompt.HigherInteract then
      for i,v in ipairs(workspace:GetDescendants()) do
        if v:FindFirstChildWhichIsA("ProximityPrompt") then
          v.MaxActivationDistance = v.MaxActivationDistance + 5
        end
      end
    end
    if Doctor.AutoUseBandage then
      if game.Players.LocalPlayer.Character:FindFirstChild("Bandage") then
        if game.Players.LocalPlayer.Character.Humanoid.Health < Doctor.HealthUseBandage then
           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bandage").Use:FireServer()
        end
      end
    end
    if Doctor.AutoUseSnakeOil then
      if game.Players.LocalPlayer.Character:FindFirstChild("Snake Oil") then
        if game.Players.LocalPlayer.Character.Humanoid.Health < Doctor.HealthUseSnakeOil then
           local args = {
                 [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Snake Oil")
               }
               game:GetService("Players").LocalPlayer.Character:FindFirstChild("Snake Oil").Use:FireServer(unpack(args))
        end
      end
    end
  end)















































