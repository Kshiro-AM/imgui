project "imgui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "*.h",
        "*.cpp",
        "imgui_impl_glfw.cpp",
        "imgui_impl_glfw.h",
    }

    includedirs
    {
                
    }

    filter "system:windows"
        systemversion "latest"
        staticruntime "On"