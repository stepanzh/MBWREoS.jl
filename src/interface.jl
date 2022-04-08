function CubicEoS.describe(x::MBWREoSComponent)
    return Dict{String,Any}(
        "data structure" => repr(x),
        "name" => name(x),
        "critical pressure [Pa]" => x.Pc,
        "critical temperature [K]" => x.RTc / GAS_CONSTANT_SI,
        "pitzer acentric factor" => x.acentric_factor,
        "molar mass [kg mol⁻¹]" => x.molar_mass,
        "number of carbons atoms" => x.carbon_number,
        "eos" => "MBWR (propane as reference)",
    )
end
