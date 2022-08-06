require "common"

data:extend{
    {
        type = "string-setting",
        name = prefix "rotation-speed-circle-unit",
        setting_type = "startup",
        default_value = "τ",
        allowed_values = {"τ","π","°","gon","custom"},

    },
    {
        type = "string-setting",
        name = prefix "rotation-speed-circle-custom-unit",
        default_value = "",
        allow_blank = true,
        setting_type = "startup",
        hidden = true,
    },
    {
        type = "double-setting",
        name = prefix "rotation-speed-circle-unit-per-circle",
        default_value = 1.0,
        setting_type = "startup",
        hidden = true,
    }
}