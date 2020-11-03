
local entity, name


local function multiply_property(property, modificator)
	if entity[property] == 0 then return end
	entity[property] = entity[property] * modificator
end


name = "locomotive"
entity = data.raw[name][name]
if entity then
	multiply_property("max_speed", 1.5)
	entity.max_power = "4000kW" -- TODO: change
	if entity.burner.effectivity ~= 0 then
		entity.burner.effectivity = entity.burner.effectivity * 2
	end
	multiply_property("friction_force", 8)
end

name = "cargo-wagon"
entity = data.raw[name][name]
if entity then
	multiply_property("friction_force", 5)
	multiply_property("inventory_size", 1.5)
end

name = "fluid-wagon"
entity = data.raw[name][name]
if entity then
	multiply_property("friction_force", 5)
	multiply_property("capacity", 1.5)
end

