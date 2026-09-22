local soundHandle = nil

return {
    CanMove = false,
    SelectEffect = "ui/hud/devices/ui_devices",
    
    OnUpdate = function(self)
        if not soundHandle then
            soundHandle = Sound.Play(path .. "/effects/media/stupid_pig_dream.mp3", self.Position, true)
        end
        
        if self.IsDead then
            if soundHandle then
                soundHandle:Stop()
                soundHandle = nil
            end
        end
    end,
    
    OnDestroy = function(self)
        if soundHandle then
            soundHandle:Stop()
            soundHandle = nil
        end
    end
}
