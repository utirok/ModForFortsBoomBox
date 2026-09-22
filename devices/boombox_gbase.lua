return {
    SaveName = "BoomBox_old",
    Name = "Boombox (Old Songs)",
    Icon = "hud-boombox-icon",
    Detail = "hud-detail-boombox",
    
    -- Физика (скопирована из твоего примера)
    ConstructEffect = "effects/device_construct.lua",
    CompleteEffect = "effects/device_complete.lua",
    Scale = 1.0,
    SelectionWidth = 35.0,
    SelectionHeight = 25.0,
    SelectionOffset = { 0.0, -25.5 },
    Mass = 50.0,
    HitPoints = 10.0,
    EnergyProductionRate = -5.0,
    MetalProductionRate = 0.0,
    EnergyStorageCapacity = 0.0,
    MetalStorageCapacity = 0.0,
    MinWindEfficiency = 1,
    MaxWindHeight = 0,
    MaxRotationalSpeed = 0,
    DeviceSplashDamage = 0,
    DeviceSplashDamageMaxRadius = 0,
    DeviceSplashDamageDelay = 0.2,
    IgnitePlatformOnDestruct = false,
    StructureSplashDamage = 0,
    StructureSplashDamageMaxRadius = 0,
    DestroyEffect = path .. "/effects/explosiion.lua",

    dofile("effects/device_smoke.lua"),
    SmokeEmitter = StandardDeviceSmokeEmitter,

    -- Спрайты (Оставляем base.png, как ты и просил)
    Sprites =
    {
        {
            Name = "boombox-base",
            States =
            {
                Normal = { Frames = { { texture = path .. "/devices/boombox/base.png" }, mipmap = true, }, },
            },
        },
    },

    Root =
    {
        Name = "boombox",
        Angle = 0,
        Pivot = { 0, -0.235 },
        PivotOffset = { 0, 0 },
        Sprite = "boombox-base",
    }
}
