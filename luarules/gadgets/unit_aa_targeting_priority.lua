function gadget:GetInfo()
	return {
		name = 'AA Targeting Priority',
		desc = '',
		author = 'Doo', --additions wilkubyk
		version = 'v1.0',
		date = 'May 2018',
		license = 'GNU GPL, v2 or later',
		layer = -1, --must run before game_initial_spawn, because game_initial_spawn must control the return of GameSteup
		enabled = true
	}
end

if gadgetHandler:IsSyncedCode() then

	local targetPriority = {
		Bombers = 1,
		Vtols = 10,
		Fighters = 20,
		Scouts = 1000,
	}

	local airCategories = {}
	local hasPriorityAir = {}
	for unitDefID, unitDef in pairs(UnitDefs) do
		local weapons = unitDef.weapons
		if unitDef.isAirUnit then
			airCategories[unitDefID] = "Scouts"
			if unitDef.isTransport then
				airCategories[unitDefID] = "Vtols"
			elseif unitDef.isBuilder then
				airCategories[unitDefID] = "Vtols"
			end
			for i = 1, #weapons do
				local weaponDef = WeaponDefs[weapons[i].weaponDef]
				if weaponDef.type == 'AircraftBomb' then
					airCategories[unitDefID] = "Bombers"
				elseif weapons[i].onlyTargets.vtol then
					airCategories[unitDefID] = "Fighters"
				else
					airCategories[unitDefID] = "Vtols"
				end
			end
		end

		for i = 1, #weapons do
			if weapons[i].onlyTargets.vtol then
				hasPriorityAir[unitDefID] = true

				-- do Script.SetWatchWeapon so AllowWeaponTarget gets called
				for wid, weapon in ipairs(unitDef.weapons) do
					if weapon.onlyTargets then
						for category, _ in pairs(weapon.onlyTargets) do
							if category == 'vtol' then
								Script.SetWatchWeapon(weapon.weaponDef, true) -- watch weapon so AllowWeaponTarget works
							end
						end
					end
				end
			end
		end
	end

	function gadget:Initialize()
		for _, unitID in ipairs(Spring.GetAllUnits()) do
			local unitDefID = Spring.GetUnitDefID(unitID)
			gadget:UnitCreated(unitID, unitDefID)
		end
	end

	function gadget:AllowWeaponTarget(unitID, targetID, attackerWeaponNum, attackerWeaponDefID, defPriority)
		if targetID == -1 and attackerWeaponNum == -1 then
			return true, defPriority
		end
		local unitDefID = Spring.GetUnitDefID(targetID)
		if unitDefID then
			local priority = defPriority or 1.0
			if airCategories[unitDefID] and hasPriorityAir[Spring.GetUnitDefID(unitID)] then
				priority = priority * targetPriority[airCategories[unitDefID]]
			end
			return true, priority
		end
	end
end
