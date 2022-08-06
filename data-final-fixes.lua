require "common"

local function description(s)
    return "description." .. s
end

unit = settings.startup[prefix "rotation-speed-circle-unit"].value

log(unit)

local nsteps_table = {
    ["τ"] = 1,
    ["π"] = 2,
    ["°"] = 360,
    ["gon"] = 400,
    ["custom"] = settings.startup[prefix "rotation-speed-circle-unit-per-circle"].value
}
log(serpent.block(nsteps_table))

nsteps = nsteps_table[unit]
log(nsteps)

if unit == "custom" then unit = settings.startup[prefix "rotation-speed-circle-custom-unit"].value end

for inserter_name, inserter in pairs(data.raw.inserter) do
    if inserter.localised_description == nil then
        inserter.localised_description = {"",
            {description "rotation-speed"}, ": ", {description(prefix "units-per-second"), inserter.rotation_speed * 60 * nsteps, unit}
        }
    else
        inserter.localised_description = {"",
            inserter.localised_description, '\n',
            {description "rotation-speed"}, ": ", {description(prefix "units-per-second"), inserter.rotation_speed * 60 * nsteps, unit}
        }
    end

end
