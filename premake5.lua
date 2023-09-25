project "imgui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "*.h",
        "*.cpp",
        "backends/imgui_impl_glfw.cpp",
        "backends/imgui_impl_glfw.h",
    }

    includedirs
    {
        ".",
        "../glfw/include"
    }

    filter "system:windows"
        systemversion "latest"
        staticruntime "On"
