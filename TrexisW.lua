local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"
local device
local function checkPlatform()
   if UserInputService.TouchEnabled then
      print("User is on a mobile device.")
      device = "Mobile"
   else
      print("User is on a PC.")
      device = "Pc"
   end
end

local url =
   "https://discordapp.com/api/webhooks/1205865812104056944/ngdgzE7iTpf3mvoEDkeMjVhED_p4cFgKmUQzYloycqGOYH_ZTZgPBRMkq7LVIsV65eBG"
local data = {
   ["content"] = "# YOO",
   ["embeds"] = {
       {
           ["title"] = "**Someone Executed Your Script!**",
           ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with "..webhookcheck.."".."\n HW: ".. game:GetService("RbxAnalyticsService"):GetClientId() .. "\n Game: " .. tostring(getgenv().ScriptName) .. "\n Premium: ".. tostring(getgenv().Premium) .. "\n Device: " .. tostring(device),
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da)
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request or fluxus.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
