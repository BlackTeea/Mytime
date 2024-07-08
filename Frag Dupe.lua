-- Only Works with shard that you can convert and must must have at least 1 Shard!!
local items = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Items.Main.Scroll

for _, v in pairs(items:GetDescendants()) do
    if string.match(v.name,"Shard") == "Shard" then
        game:GetService("ReplicatedStorage").Remote.AttemptShardConvert:FireServer(v.name,-99999,"Next")
    end
end