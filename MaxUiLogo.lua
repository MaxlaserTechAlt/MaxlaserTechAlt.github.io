local verison;
local MaxUiArrayList = Instance.new("ScreenGui")
local Name = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local Verison = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local Label = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UIListLayout = Instance.new("UIListLayout")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")


MaxUiArrayList.Name = "MaxUiArrayList"
MaxUiArrayList.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MaxUiArrayList.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MaxUiArrayList.ResetOnSpawn = false

Name.Name = "Name"
Name.Parent = MaxUiArrayList
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.Position = UDim2.new(0, 31, 0, 40)
Name.Size = UDim2.new(0, 143, 0, 51)
Name.Font = Enum.Font.SourceSansBold
Name.Text = "MaxUi X"
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextScaled = true
Name.TextSize = 45.000
Name.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 157, 255)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(53, 211, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(3, 234, 255))}
UIGradient.Parent = Name

Verison.Name = "Verison"
Verison.Parent = MaxUiArrayList
Verison.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Verison.BackgroundTransparency = 1.000
Verison.Position = UDim2.new(0, 129, 0, 31)
Verison.Size = UDim2.new(0, 47, 0, 23)
Verison.Font = Enum.Font.SourceSansBold
Verison.Text = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxlaserTechAlt/MaxlaserTechAlt.github.io/main/verison.lua"))()
Verison.TextColor3 = Color3.fromRGB(255, 255, 255)
Verison.TextScaled = true
Verison.TextSize = 45.000
Verison.TextWrapped = true

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 157, 255)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(53, 211, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(3, 234, 255))}
UIGradient_2.Parent = Verison


UITextSizeConstraint.Parent = Label
UITextSizeConstraint.MaxTextSize = 21

UIAspectRatioConstraint.Parent = Label
UIAspectRatioConstraint.AspectRatio = 18.000

UIAspectRatioConstraint_3.Parent = MaxUiArrayList
UIAspectRatioConstraint_3.AspectRatio = 1.522


local function BWBUB_fake_script()
	local script = Instance.new('LocalScript', Name)

	local TextLabel = script.Parent
	
	local Gradient1 = Instance.new("UIGradient")
	Gradient1.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(0, 1, 0))
	Gradient1.Rotation = 90
	Gradient1.Parent = TextLabel
	
	local Gradient2 = Instance.new("UIGradient")
	Gradient2.Color = ColorSequence.new(Color3.new(0, 1, 0), Color3.new(1, 0, 0))
	Gradient2.Rotation = 90
	Gradient2.Offset = Vector2.new(-1, 0)
	Gradient2.Parent = TextLabel

	local function MoveGradients()
		local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear)
		local tween1 = game.TweenService:Create(Gradient1, tweenInfo, {Offset = Vector2.new(1, 0)})
		local tween2 = game.TweenService:Create(Gradient2, tweenInfo, {Offset = Vector2.new(0, 0)})
		tween1:Play()
		tween2:Play()
		tween1.Completed:Wait()
		wait(0.5)
		local resetTweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear)
		local resetTween1 = game.TweenService:Create(Gradient1, resetTweenInfo, {Offset = Vector2.new(-1, 0)})
		local resetTween2 = game.TweenService:Create(Gradient2, resetTweenInfo, {Offset = Vector2.new(-1, 0)})
		resetTween1:Play()
		resetTween2:Play()
		resetTween1.Completed:Wait()
	end
	
	while true do wait()
		MoveGradients()
	end
	
end
coroutine.wrap(BWBUB_fake_script)()
local function RPQUK_fake_script() 
	local script = Instance.new('LocalScript', Verison)

	local TextLabel = script.Parent
	
	local Gradient1 = Instance.new("UIGradient")
	Gradient1.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(0, 1, 0))
	Gradient1.Rotation = 90
	Gradient1.Parent = TextLabel
	
	local Gradient2 = Instance.new("UIGradient")
	Gradient2.Color = ColorSequence.new(Color3.new(0, 1, 0), Color3.new(1, 0, 0))
	Gradient2.Rotation = 90
	Gradient2.Offset = Vector2.new(-1, 0)
	Gradient2.Parent = TextLabel
	
	local function MoveGradients()
		local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear)
		local tween1 = game.TweenService:Create(Gradient1, tweenInfo, {Offset = Vector2.new(1, 0)})
		local tween2 = game.TweenService:Create(Gradient2, tweenInfo, {Offset = Vector2.new(0, 0)})
		tween1:Play()
		tween2:Play()
		tween1.Completed:Wait()
		wait(0.5)
		local resetTweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear)
		local resetTween1 = game.TweenService:Create(Gradient1, resetTweenInfo, {Offset = Vector2.new(-1, 0)})
		local resetTween2 = game.TweenService:Create(Gradient2, resetTweenInfo, {Offset = Vector2.new(-1, 0)})
		resetTween1:Play()
		resetTween2:Play()
		resetTween1.Completed:Wait()
	end
	
	while true do wait()
		MoveGradients()
	end
	
end
coroutine.wrap(RPQUK_fake_script)()
