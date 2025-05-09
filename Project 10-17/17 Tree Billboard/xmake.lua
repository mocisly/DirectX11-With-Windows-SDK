targetName = "17_Tree_Billboard"
target(targetName)
    set_group("Project 10-17")
    set_kind("binary")
    set_targetdir(path.join(binDir,targetName))
    add_deps("ImGui")
    add_rules("imguiini")
    add_dx_sdk_options()
    add_headerfiles("**.h")
    add_files("**.cpp")
    add_headerfiles("../Common/**.h")
    add_files("../Common/**.cpp")
    add_includedirs("../Common")
    -- shader
    add_rules("hlsl_shader_complier")
    add_headerfiles("HLSL/**.hlsl|HLSL/**.hlsli")
    add_files("HLSL/**.hlsl|HLSL/**.hlsli")
    -- assert
    add_rules("asset_file")
target_end()