local soundHandle = nil

return {
    CanMove = false,
    SelectEffect = "ui/hud/devices/ui_devices",
    
    OnUpdate = function(self)
        -- Если звука еще нет, создаем его
        if not soundHandle then
            soundHandle = Sound.Play(path .. "/effects/media/chainsaw_man_kick_back.mp3", self.Position, true)
            -- true в конце означает LOOP (зацикливание)
        end
        
        -- Если устройство уничтожено, удаляем звук
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
