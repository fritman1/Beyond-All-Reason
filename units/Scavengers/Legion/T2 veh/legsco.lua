return {
	legsco = {
		acceleration = 0.025,
		brakerate = 0.05,
		buildcostenergy = 16000,
		buildcostmetal = 1050,
		buildpic = "LEGSCO.DDS",
		buildtime = 19000,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 2",
		collisionvolumescales = "46 25 46",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "largeexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 5200,
		maxslope = 12,
		maxvelocity = 1.9,
		maxwaterdepth = 15,
		movementclass = "MTANK3",
		nochasecategory = "VTOL",
		objectname = "Units/scavboss/LEGSCO.s3o",
		script = "Units/scavboss/LEGSCO.cob",
		seismicsignature = 0,
		selfdestructas = "largeExplosionGenericSelfd",
		sightdistance = 494,
		trackoffset = 8,
		trackstrength = 10,
		tracktype = "corwidetracks",
		trackwidth = 44,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.6104,
		turnrate = 300,
		customparams = {
			unitgroup = 'weapon',
			basename = "base",
			cannon1name = "barrel1",
			cannon2name = "barrel2",
			driftratio = "0.5",
			firingceg = "barrelshot-medium",
			flare1name = "flare1",
			flare2name = "flare2",
			kickback = "-2.4",
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			restoretime = "3000",
			rockstrength = "4",
			sleevename = "sleeve",
			subfolder = "armvehicles/t2",
			techlevel = 2,
			turretname = "turret",
			wpn1turretx = "65",
			wpn1turrety = "105",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-0.291641235352 0.00484669189453 0.383178710938",
				collisionvolumescales = "43.0491943359 23.8300933838 46.0147399902",
				collisionvolumetype = "Box",
				damage = 3000,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 650,
				object = "Units/scavboss/legsco_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 2000,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 220,
				object = "Units/arm3X3F.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-medium",
				[2] = "custom:dust_cloud_dirt_light",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "tarmmove",
			},
			select = {
				[1] = "tarmsel",
			},
		},
		weapondefs = {
			maincannon = {
				areaofeffect = 160,
				avoidfeature = false,
				--cegtag = "arty-medium",
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-medium",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Heavy g2g plasma cannon",
				noselfdamage = true,
				range = 575,
				reloadtime = 3.5,
				soundhit = "xplomed1",
				soundhitwet = "splslrg",
				soundstart = "largegun",
				--soundhitvolume = 9.75,
				--soundstartvolume = 8.75,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 300,
				damage = {
					bombers = 30,
					default = 370,
					fighters = 30,
					subs = 100,
					vtol = 30,
				},
			},
			heatray = {
				areaofeffect = 8,
				avoidfeature = false,
				beamtime = 0.5,
				corethickness = 0.2,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:laserhit-small-yellow",
				firestarter = 30,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 6,
				name = "HeatRay",
				noselfdamage = true,
				range = 360,
				reloadtime = 2,
				rgbcolor = "1 0.8 0",
				rgbcolor2 = "0.8 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "lasrfir3",
				soundtrigger = 1,
				targetmoveerror = 0.2,
				thickness = 1.25,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 950,
				damage = {
					bombers = 25,
					default = 160,
					fighters = 25,
					vtol = 25,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "MAINCANNON",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				badtargetcategory = "VTOL",
				def = "HEATRAY",
				maindir = "-1 0 1",
				maxangledif = 270,
				onlytargetcategory = "SURFACE",
			},
			[3] = {
				badtargetcategory = "VTOL",
				def = "HEATRAY",
				maindir = "1 0 1",
				maxangledif = 270,
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
