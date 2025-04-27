-- 로컬 플레이어와 백팩 가져오기
local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")

-- 카람빗 스킨의 Asset ID (이 부분은 실제 카람빗 텍스처 ID로 교체해야 합니다)
local karambitTextureId = "rbxassetid://카람빗_스킨_아이디"  -- 여기에 실제 카람빗 스킨 ID를 넣어야 합니다.

-- 무기 스킨을 카람빗으로 변경하는 함수
local function changeWeaponSkin(tool)
    local handle = tool:FindFirstChild("Handle")
    if handle and handle:IsA("Part") then
        local mesh = handle:FindFirstChildOfClass("SpecialMesh")
        if mesh then
            -- 무기의 텍스처를 카람빗으로 변경
            mesh.TextureId = karambitTextureId
        end
    end
end

-- 백팩에 있는 모든 무기에서 카람빗 스킨을 적용
for _, tool in pairs(backpack:GetChildren()) do
    if tool:IsA("Tool") and tool.Name == "Knife" then  -- "Knife" 이름을 단검의 이름으로 확인
        changeWeaponSkin(tool)
    end
end

-- 새로운 무기가 백팩에 추가될 때마다 카람빗 스킨을 적용
backpack.DescendantAdded:Connect(function(child)
    if child:IsA("Tool") and child.Name == "Knife" then  -- "Knife" 이름을 단검으로 확인
        changeWeaponSkin(child)
    end
end)
