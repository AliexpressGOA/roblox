local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- 윈도우 생성
local Window = Rayfield:CreateWindow({
   Name = "🔥알리 스크립트⭐✅",
   Icon = 0, -- 아이콘 ID (0이면 없음)
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by 알리",
   Theme = "Light",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = true,
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "키는 'AliExpress' 입니다.",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"AliExpress"}
   }
})

-- 메인 탭
local Tab1 = Window:CreateTab("🔥메인 탭", 6031075938) 

-- 어드민 버튼
local Button1 = Tab1:CreateButton({
   Name = "어드민",
   Callback = function()
      print("FE어드민 기능이 켜졌어요!")
      loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

-- 살보결 탭
local Tab2 = Window:CreateTab("✅살보결")

-- Tbao Hub 버튼
local Button2 = Tab2:CreateButton({
   Name = "Tbao Hub",
   Callback = function()
      print("살보결 스크립트 켜짐")
      loadstring(game:HttpGet('https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubMurdervssheriff'))()
   end,
})

-- Zeyphr [Close Cheat] 버튼
local Button3 = Tab2:CreateButton({
   Name = "Zeyphr [ Close Cheat ]",
   Callback = function()
      print("Zeyphr 스크립트 켜짐")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/TheRealAvrwm/Projects/refs/heads/main/MVSD%20Xeno%20Closet.lua", true))()
   end,
})

-- 데드레일 탭
local Tab3 = Window:CreateTab("데드레일")

-- Speed Hub X 버튼
local Button4 = Tab3:CreateButton({
   Name = "Speed Hub X",
   Callback = function()
      print("데드레일 스크립트 켜짐")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
   end,
})
