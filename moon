















































-- Booting Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()


-- Functions
_G.Key = "S545"
_G.KeyInput = "string"

function DestroyGui()
    OrionLib:Destroy()
end

function Menu()
   https://raw.githubusercontent.com/UserDevEthical/Loadstring/main/BF-New.lua
end


-- Creating Window
local Window = OrionLib:MakeWindow({Name = "مفتاح ", HidePremium = false, IntroEnabled = false})


-- Creating Tabs
local tab1 = Window:MakeTab({
  Name = "مفتاح",
  Icon = "",
  PremiumOnly = false
})

local tab2 = Window:MakeTab({
  Name = "كيف تجيب مفتاح",
  Icon = "",
  PremiumOnly = false
})


-- Config Tab1
local Section1 = tab1:AddSection({
  Name = "Key"
})

tab1:AddTextbox({
  Name = "ادخل مفتاح",
  Default = "",
  TextDisappear = false,
  Callback = function(Value)
         _G.KeyInput = Value
  end	  
})

tab1:AddButton({
  Name = "تأكد من مفتاح",
  Callback = function()
        if _G.KeyInput == _G.Key then
            OrionLib:MakeNotification({
          Name = "مفتاح صحيح!",
          Content = "مفتاح صحيح سكربت راح يتحمل",
          Image = "",
          Time = 1.5
            })
        wait(1.5)
        Menu()
    end
  end    
})

-- Config Tab2
local Section1 = tab2:AddSection({
  Name = "حذف سكربت"
})





local Section1 = tab2:AddSection({
  Name = "GUI احذف"
})

tab2:AddButton({
  Name = "احذف سكربت",
  Callback = function()
      wait(0.5)
      DestroyGui()
  end    
})
-- Script End
OrionLib:Init()
