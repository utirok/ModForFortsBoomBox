LifeSpan = 500.0

Sprites =
{

}
Effects =
{
	{
		Type = "sound",
		TimeToTrigger = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/explosiion.mp3",
		Volume = 0.4,
		PlayForEnemy = true,
	},
	{
		Type = "sparks",
		TimeToTrigger = 0.5,
		SparkCount = 1,
		LocalPosition = { x = 0, y = 0, z = -1000000 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = path .. "/effects/media/kaboom",
		Gravity = 0,					-- gravity applied to particle (981 is earth equivalent)
		Additive = true,

		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = 180,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 180,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 0,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =		
		{
			{
				Angle = 0,					-- angle of keyframe in degrees (e.g. -180, 45, 0)
				RadialOffsetMin = 0,		-- minimum distance from effect origin
				RadialOffsetMax = 0,		-- maximum distance from effect origin
				ScaleMean = 2,			-- mean scale (normal distribution)
				ScaleStdDev = 0,			-- standard deviation of scale (0 will make them all the same size)
				SpeedStretch = 0,			-- factor of speed by which to elongate the spark in the direction of travel (avoid using with rotation)
				SpeedMean = 1.0,			-- mean speed of sparks at emission (normal distribution)
				SpeedStdDev = 0.1,			-- standard deviation of spark speed at emission
				Drag = 0.1,				-- drag of sparks (zero will make them continue at same speed)
				RotationMean = 10,			-- mean initial rotation in degrees (e.g. -180, 45, 0) (normal distribution)
				RotationStdDev = 0,		-- standard deviation of initial rotation in degrees (zero will make them start at the same angle)
				RotationalSpeedMean = 15,	-- mean rotational speed in degrees per second (e.g. -180, 45, 0) (normal distribution)
				RotationalSpeedStdDev = 0,	-- standard deviation of rotational speed in degrees per second (zero will make them rotate at the same rate)
				AgeMean = 1.0,	-- mean age in seconds (normal distribution)
				AgeStdDev = 0,				-- standard deviation of age in seconds (zero makes them last the same length of time)
				AlphaKeys = { 0.1, 0.1 },	-- fractions of life span between which the spark reaches full alpha (fade in -> full alpha -> fade out)
				ScaleKeys = { 1, 2.5 },		-- fractions of life span between which the spark reaches full scale (balloon in -> full scale -> shrink out)
				colour = { 255, 255, 255, 255 }, -- Colour used to modulate the sprite
			},
		},
	},
}