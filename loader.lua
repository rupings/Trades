local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local http = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")

local SUPABASE_URL = "https://XXXX.supabase.co"
local SUPABASE_KEY = "your-anon-key"
local SCRIPT_URL = SUPABASE_URL .. "/storage/v1/object/public/scripts/main.lua"
local PLACE_ID = 108924807761800

if game.PlaceId ~= PLACE_ID then
    local sg = Instance.new("ScreenGui")
    sg.Name = "RupingWrong"
    sg.ResetOnSpawn = false
    sg.DisplayOrder = 99999
    sg.IgnoreGuiInset = true
    sg.Parent = LP.PlayerGui

    local ov = Instance.new("Frame")
    ov.Size = UDim2.new(1,0,1,0)
    ov.BackgroundColor3 = Color3.fromRGB(8,6,16)
    ov.BackgroundTransparency = 0.3
    ov.BorderSizePixel = 0
    ov.Parent = sg

    local win = Instance.new("Frame")
    win.Size = UDim2.new(0,380,0,180)
    win.Position = UDim2.new(0.5,-190,0.5,-90)
    win.BackgroundColor3 = Color3.fromRGB(13,12,22)
    win.BackgroundTransparency = 0.04
    win.BorderSizePixel = 0
    win.Parent = sg
    Instance.new("UICorner", win).CornerRadius = UDim.new(0,12)
    local st = Instance.new("UIStroke", win)
    st.Color = Color3.fromRGB(195,45,45)
    st.Thickness = 1.5

    local tb = Instance.new("Frame")
    tb.Size = UDim2.new(1,0,0,46)
    tb.BackgroundColor3 = Color3.fromRGB(18,16,30)
    tb.BackgroundTransparency = 0.05
    tb.BorderSizePixel = 0
    tb.Parent = win
    Instance.new("UICorner", tb).CornerRadius = UDim.new(0,12)
    local tbf = Instance.new("Frame")
    tbf.Size = UDim2.new(1,0,0.5,0)
    tbf.Position = UDim2.new(0,0,0.5,0)
    tbf.BackgroundColor3 = Color3.fromRGB(18,16,30)
    tbf.BackgroundTransparency = 0.05
    tbf.BorderSizePixel = 0
    tbf.Parent = tb

    local tl = Instance.new("TextLabel")
    tl.Size = UDim2.new(1,-20,1,0)
    tl.Position = UDim2.new(0,16,0,0)
    tl.BackgroundTransparency = 1
    tl.Text = "Ruping  ·  Wrong Game"
    tl.TextColor3 = Color3.fromRGB(225,220,245)
    tl.Font = Enum.Font.GothamMedium
    tl.TextSize = 13
    tl.TextXAlignment = Enum.TextXAlignment.Left
    tl.Parent = tb

    local div = Instance.new("Frame")
    div.Size = UDim2.new(1,0,0,1)
    div.Position = UDim2.new(0,0,0,46)
    div.BackgroundColor3 = Color3.fromRGB(35,30,58)
    div.BorderSizePixel = 0
    div.Parent = win

    local icon = Instance.new("TextLabel")
    icon.Size = UDim2.new(1,0,0,36)
    icon.Position = UDim2.new(0,0,0,56)
    icon.BackgroundTransparency = 1
    icon.Text = "⚠"
    icon.TextColor3 = Color3.fromRGB(255,90,90)
    icon.Font = Enum.Font.GothamMedium
    icon.TextSize = 26
    icon.Parent = win

    local ml = Instance.new("TextLabel")
    ml.Size = UDim2.new(1,-40,0,40)
    ml.Position = UDim2.new(0,20,0,96)
    ml.BackgroundTransparency = 1
    ml.Text = "This script only works in Fish It!\nPlease join the correct game."
    ml.TextColor3 = Color3.fromRGB(200,185,225)
    ml.Font = Enum.Font.Gotham
    ml.TextSize = 11
    ml.TextWrapped = true
    ml.Parent = win

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

local function showKickPopup(msg)
    if sg and sg.Parent then sg:Destroy() end
    local ksg = Instance.new("ScreenGui")
    ksg.Name = "RupingKick"
    ksg.ResetOnSpawn = false
    ksg.DisplayOrder = 99999
    ksg.IgnoreGuiInset = true
    ksg.Parent = LP.PlayerGui

    local kov = Instance.new("Frame")
    kov.Size = UDim2.new(1,0,1,0)
    kov.BackgroundColor3 = Color3.fromRGB(8,6,16)
    kov.BackgroundTransparency = 0.3
    kov.BorderSizePixel = 0
    kov.Parent = ksg

    local kwin = Instance.new("Frame")
    kwin.Size = UDim2.new(0,400,0,220)
    kwin.Position = UDim2.new(0.5,-200,0.5,-110)
    kwin.BackgroundColor3 = Color3.fromRGB(13,12,22)
    kwin.BackgroundTransparency = 0.04
    kwin.BorderSizePixel = 0
    kwin.Parent = ksg
    Instance.new("UICorner", kwin).CornerRadius = UDim.new(0,12)
    local ks = Instance.new("UIStroke", kwin)
    ks.Color = Color3.fromRGB(195,45,45)
    ks.Thickness = 1.5

    local ktb = Instance.new("Frame")
    ktb.Size = UDim2.new(1,0,0,46)
    ktb.BackgroundColor3 = Color3.fromRGB(18,16,30)
    ktb.BackgroundTransparency = 0.05
    ktb.BorderSizePixel = 0
    ktb.Parent = kwin
    Instance.new("UICorner", ktb).CornerRadius = UDim.new(0,12)
    local ktbf = Instance.new("Frame")
    ktbf.Size = UDim2.new(1,0,0.5,0)
    ktbf.Position = UDim2.new(0,0,0.5,0)
    ktbf.BackgroundColor3 = Color3.fromRGB(18,16,30)
    ktbf.BackgroundTransparency = 0.05
    ktbf.BorderSizePixel = 0
    ktbf.Parent = ktb

    local ktitle = Instance.new("TextLabel")
    ktitle.Size = UDim2.new(1,-20,1,0)
    ktitle.Position = UDim2.new(0,16,0,0)
    ktitle.BackgroundTransparency = 1
    ktitle.Text = "Ruping  ·  License Error"
    ktitle.TextColor3 = Color3.fromRGB(225,220,245)
    ktitle.Font = Enum.Font.GothamMedium
    ktitle.TextSize = 13
    ktitle.TextXAlignment = Enum.TextXAlignment.Left
    ktitle.Parent = ktb

    local kdiv = Instance.new("Frame")
    kdiv.Size = UDim2.new(1,0,0,1)
    kdiv.Position = UDim2.new(0,0,0,46)
    kdiv.BackgroundColor3 = Color3.fromRGB(35,30,58)
    kdiv.BorderSizePixel = 0
    kdiv.Parent = kwin

    local icon = Instance.new("TextLabel")
    icon.Size = UDim2.new(1,0,0,38)
    icon.Position = UDim2.new(0,0,0,58)
    icon.BackgroundTransparency = 1
    icon.Text = "⚠"
    icon.TextColor3 = Color3.fromRGB(255,90,90)
    icon.Font = Enum.Font.GothamMedium
    icon.TextSize = 28
    icon.Parent = kwin

    local kmsg = Instance.new("TextLabel")
    kmsg.Size = UDim2.new(1,-40,0,44)
    kmsg.Position = UDim2.new(0,20,0,100)
    kmsg.BackgroundTransparency = 1
    kmsg.Text = msg
    kmsg.TextColor3 = Color3.fromRGB(200,185,225)
    kmsg.Font = Enum.Font.Gotham
    kmsg.TextSize = 11
    kmsg.TextWrapped = true
    kmsg.Parent = kwin

    local ksub = Instance.new("TextLabel")
    ksub.Size = UDim2.new(1,-40,0,20)
    ksub.Position = UDim2.new(0,20,0,168)
    ksub.BackgroundTransparency = 1
    ksub.Text = "You will be removed from the game shortly..."
    ksub.TextColor3 = Color3.fromRGB(120,110,155)
    ksub.Font = Enum.Font.Gotham
    ksub.TextSize = 10
    ksub.Parent = kwin

    local pb = Instance.new("Frame")
    pb.Size = UDim2.new(1,-40,0,3)
    pb.Position = UDim2.new(0,20,0,194)
    pb.BackgroundColor3 = Color3.fromRGB(31,28,48)
    pb.BorderSizePixel = 0
    pb.Parent = kwin
    Instance.new("UICorner", pb).CornerRadius = UDim.new(1,0)

    local pbf = Instance.new("Frame")
    pbf.Size = UDim2.new(1,0,1,0)
    pbf.BackgroundColor3 = Color3.fromRGB(195,45,45)
    pbf.BorderSizePixel = 0
    pbf.Parent = pb
    Instance.new("UICorner", pbf).CornerRadius = UDim.new(1,0)

    TweenService:Create(pbf, TweenInfo.new(5, Enum.EasingStyle.Linear), {
        Size = UDim2.new(0,0,1,0)
    }):Play()

    task.wait(5)
    LP:Kick("[Ruping] " .. msg)
end

local function tryActivate()
    local key = keyBox.Text:gsub("%s+", "")
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
        setStatus("Invalid license key.", true)
        activateBtn.Text = "Activate"
        activateBtn.BackgroundColor3 = Color3.fromRGB(100,65,200)
        return
    end

    local lic = data[1]

    if not lic.is_active then
        setStatus("License is inactive.", true)
        activateBtn.Text = "Activate"
        activateBtn.BackgroundColor3 = Color3.fromRGB(100,65,200)
        return
    end

    if not lic.is_permanent and lic.expires_at then
        local expTs = lic.expires_at:match("(%d+)-(%d+)-(%d+)")
        if expTs then
            setStatus("", false)
        end
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
        activateBtn.Text = "Activate"
        activateBtn.BackgroundColor3 = Color3.fromRGB(100,65,200)
        showKickPopup(
            "License slot is full (" .. #cleanUsers .. "/" .. lic.slots_total .. ").\n" ..
            "All slots are currently in use.\nContact the seller for more slots."
        )
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
