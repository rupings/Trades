local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local http = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")

local SUPABASE_URL = "https://nyfxhccyuaojuevqmfum.supabase.co"
local SUPABASE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im55ZnhoY2N5dWFvanVldnFtZnVtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzY2NjcyNjAsImV4cCI6MjA5MjI0MzI2MH0.NlEO_Hli3bM2x84Kvt-7duAlkEolD8fOCcbtowcxdPc"
local SCRIPT_URL = SUPABASE_URL .. "/storage/v1/object/public/scripts/main.lua"
local PLACE_ID = 121864768012064

if game.PlaceId ~= PLACE_ID then
    task.wait(1)
    LP:Kick("[Ruping] This script only works in Fish It! Please join the correct game.")
    return
end

local sg = Instance.new("ScreenGui")
sg.Name = "RupingKeyUI"
sg.ResetOnSpawn = false
sg.DisplayOrder = 9999
sg.IgnoreGuiInset = true
sg.Parent = LP.PlayerGui

local overlay = Instance.new("Frame")
overlay.Size = UDim2.new(1,0,1,0)
overlay.BackgroundColor3 = Color3.fromRGB(8,6,16)
overlay.BackgroundTransparency = 0.4
overlay.BorderSizePixel = 0
overlay.Parent = sg

local win = Instance.new("Frame")
win.Size = UDim2.new(0,380,0,230)
win.Position = UDim2.new(0.5,-190,0.5,-115)
win.BackgroundColor3 = Color3.fromRGB(13,12,22)
win.BackgroundTransparency = 0.04
win.BorderSizePixel = 0
win.Parent = sg
Instance.new("UICorner", win).CornerRadius = UDim.new(0,12)
Instance.new("UIStroke", win).Color = Color3.fromRGB(50,44,78)

local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1,0,0,46)
titleBar.BackgroundColor3 = Color3.fromRGB(18,16,30)
titleBar.BackgroundTransparency = 0.05
titleBar.BorderSizePixel = 0
titleBar.Parent = win
Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0,12)

local tbFix = Instance.new("Frame")
tbFix.Size = UDim2.new(1,0,0.5,0)
tbFix.Position = UDim2.new(0,0,0.5,0)
tbFix.BackgroundColor3 = Color3.fromRGB(18,16,30)
tbFix.BackgroundTransparency = 0.05
tbFix.BorderSizePixel = 0
tbFix.Parent = titleBar

local titleLbl = Instance.new("TextLabel")
titleLbl.Size = UDim2.new(1,-20,1,0)
titleLbl.Position = UDim2.new(0,16,0,0)
titleLbl.BackgroundTransparency = 1
titleLbl.Text = "Ruping  ·  License Activation"
titleLbl.TextColor3 = Color3.fromRGB(225,220,245)
titleLbl.Font = Enum.Font.GothamMedium
titleLbl.TextSize = 13
titleLbl.TextXAlignment = Enum.TextXAlignment.Left
titleLbl.Parent = titleBar

local badge = Instance.new("Frame")
badge.Size = UDim2.new(0,72,0,24)
badge.Position = UDim2.new(1,-86,0.5,-12)
badge.BackgroundColor3 = Color3.fromRGB(26,22,48)
badge.BorderSizePixel = 0
badge.Parent = titleBar
Instance.new("UICorner", badge).CornerRadius = UDim.new(1,0)
Instance.new("UIStroke", badge).Color = Color3.fromRGB(70,58,110)

local badgeLbl = Instance.new("TextLabel")
badgeLbl.Size = UDim2.new(1,0,1,0)
badgeLbl.BackgroundTransparency = 1
badgeLbl.Text = "v1.0.3"
badgeLbl.TextColor3 = Color3.fromRGB(150,120,220)
badgeLbl.Font = Enum.Font.GothamMedium
badgeLbl.TextSize = 11
badgeLbl.Parent = badge

local divider = Instance.new("Frame")
divider.Size = UDim2.new(1,0,0,1)
divider.Position = UDim2.new(0,0,0,46)
divider.BackgroundColor3 = Color3.fromRGB(35,30,58)
divider.BorderSizePixel = 0
divider.Parent = win

local subLbl = Instance.new("TextLabel")
subLbl.Size = UDim2.new(1,-40,0,18)
subLbl.Position = UDim2.new(0,20,0,62)
subLbl.BackgroundTransparency = 1
subLbl.Text = "Enter your license key to continue"
subLbl.TextColor3 = Color3.fromRGB(140,130,180)
subLbl.Font = Enum.Font.Gotham
subLbl.TextSize = 11
subLbl.TextXAlignment = Enum.TextXAlignment.Left
subLbl.Parent = win

local keyBox = Instance.new("TextBox")
keyBox.Size = UDim2.new(1,-40,0,40)
keyBox.Position = UDim2.new(0,20,0,88)
keyBox.BackgroundColor3 = Color3.fromRGB(22,19,38)
keyBox.BackgroundTransparency = 0.1
keyBox.BorderSizePixel = 0
keyBox.TextColor3 = Color3.fromRGB(220,215,245)
keyBox.PlaceholderText = "RUPING-XXXX-XXXX-XXXX"
keyBox.PlaceholderColor3 = Color3.fromRGB(80,72,110)
keyBox.Text = ""
keyBox.Font = Enum.Font.GothamMedium
keyBox.TextSize = 13
keyBox.ClearTextOnFocus = false
keyBox.Parent = win
Instance.new("UICorner", keyBox).CornerRadius = UDim.new(0,9)
Instance.new("UIStroke", keyBox).Color = Color3.fromRGB(55,48,82)

local statusLbl = Instance.new("TextLabel")
statusLbl.Size = UDim2.new(1,-40,0,18)
statusLbl.Position = UDim2.new(0,20,0,136)
statusLbl.BackgroundTransparency = 1
statusLbl.Text = ""
statusLbl.TextColor3 = Color3.fromRGB(255,90,90)
statusLbl.Font = Enum.Font.Gotham
statusLbl.TextSize = 11
statusLbl.TextXAlignment = Enum.TextXAlignment.Left
statusLbl.Parent = win

local activateBtn = Instance.new("TextButton")
activateBtn.Size = UDim2.new(1,-40,0,42)
activateBtn.Position = UDim2.new(0,20,0,162)
activateBtn.BackgroundColor3 = Color3.fromRGB(100,65,200)
activateBtn.BorderSizePixel = 0
activateBtn.Text = "Activate"
activateBtn.TextColor3 = Color3.new(1,1,1)
activateBtn.Font = Enum.Font.GothamMedium
activateBtn.TextSize = 13
activateBtn.Parent = win
Instance.new("UICorner", activateBtn).CornerRadius = UDim.new(0,9)

local function setStatus(msg, isErr)
    statusLbl.Text = msg
    statusLbl.TextColor3 = isErr
        and Color3.fromRGB(255,90,90)
        or  Color3.fromRGB(80,225,130)
end

local function kickPlayer(msg)
    if sg and sg.Parent then sg:Destroy() end
    task.wait(0.5)
    LP:Kick("[Ruping] " .. msg)
end

local function tryActivate()
    local key = (_G.RUPING_KEY or keyBox.Text):gsub("%s+", "")
    if _G.RUPING_KEY and _G.RUPING_KEY ~= "" then keyBox.Text = _G.RUPING_KEY end
    if key == "" then setStatus("Please enter a key", true); return end

    activateBtn.Text = "Checking..."
    activateBtn.BackgroundColor3 = Color3.fromRGB(55,46,88)
    setStatus("Validating license...", false)

    local ok, res = pcall(function()
        return http:RequestAsync({
            Url = SUPABASE_URL .. "/rest/v1/licenses?key=eq." .. key .. "&select=*",
            Method = "GET",
            Headers = {
                ["apikey"] = SUPABASE_KEY,
                ["Authorization"] = "Bearer " .. SUPABASE_KEY,
            }
        })
    end)

    if not ok or not res or res.StatusCode ~= 200 then
        setStatus("Connection error. Try again.", true)
        activateBtn.Text = "Activate"
        activateBtn.BackgroundColor3 = Color3.fromRGB(100,65,200)
        return
    end

    local data = http:JSONDecode(res.Body)
    if #data == 0 then
        setStatus("Kicking: Invalid key...", true)
        task.wait(1.5)
        kickPlayer("Invalid license key.")
        return
    end

    local lic = data[1]

    if not lic.is_active then
        setStatus("Kicking: License inactive...", true)
        task.wait(1.5)
        kickPlayer("License is inactive. Contact the seller.")
        return
    end

    local activeUsers = lic.active_users or {}
    local cleanUsers = {}
    local now = os.time()
    for _, u in ipairs(activeUsers) do
        if now - (u.last_seen or u.joined_at or 0) < 35 then
            table.insert(cleanUsers, u)
        end
    end

    if #cleanUsers >= lic.slots_total then
        setStatus("Kicking: Slots full...", true)
        task.wait(1.5)
        kickPlayer("License slot is full (" .. #cleanUsers .. "/" .. lic.slots_total .. "). All slots are currently in use. Contact the seller.")
        return
    end

    local userId = tostring(LP.UserId)
    table.insert(cleanUsers, {
        user_id = userId,
        joined_at = now,
        last_seen = now
    })

    pcall(function()
        http:RequestAsync({
            Url = SUPABASE_URL .. "/rest/v1/licenses?key=eq." .. key,
            Method = "PATCH",
            Headers = {
                ["apikey"] = SUPABASE_KEY,
                ["Authorization"] = "Bearer " .. SUPABASE_KEY,
                ["Content-Type"] = "application/json",
                ["Prefer"] = "return=minimal"
            },
            Body = http:JSONEncode({
                active_users = cleanUsers,
                slots_used = #cleanUsers
            })
        })
    end)

    setStatus("Loading script...", false)

    local sOk, sRes = pcall(function()
        return http:RequestAsync({
            Url = SCRIPT_URL,
            Method = "GET",
            Headers = {
                ["apikey"] = SUPABASE_KEY,
                ["Authorization"] = "Bearer " .. SUPABASE_KEY,
            }
        })
    end)

    if not sOk or not sRes or sRes.StatusCode ~= 200 then
        setStatus("Failed to load script. Try again.", true)
        activateBtn.Text = "Activate"
        activateBtn.BackgroundColor3 = Color3.fromRGB(100,65,200)
        return
    end

    _G.RUPING_LICENSE = {
        key          = key,
        slots_used   = #cleanUsers,
        slots_total  = lic.slots_total,
        user_id      = userId,
        is_permanent = lic.is_permanent,
        expires_at   = lic.expires_at,
        supabase_url = SUPABASE_URL,
        supabase_key = SUPABASE_KEY,
    }

    sg:Destroy()

    local fn, err = loadstring(sRes.Body)
    if not fn then warn("[Ruping] Load error: " .. tostring(err)); return end
    fn()
end

activateBtn.MouseButton1Click:Connect(tryActivate)
keyBox.FocusLost:Connect(function(enter) if enter then tryActivate() end end)

if _G.RUPING_KEY and _G.RUPING_KEY ~= "" then
    task.spawn(tryActivate)
end
