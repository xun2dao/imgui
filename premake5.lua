project "ImGui"
  location "%{wks.location}/ImGui"
  kind "StaticLib"
  language "C++"
  
  targetdir ("%{wks.location}/bin/"..tempdir.."/%{prj.name}")
  objdir ("%{wks.location}/bin-int/"..tempdir.."/%{prj.name}")
  includedirs "vendor/ImGui"
  
  files{
    "imconfig.h",
    "imgui.cpp",
    "imgui.h",
    "imgui_draw.cpp",
    "imgui_internal.h",
    "imgui_tables.cpp",
    "imgui_widgets.cpp",
    "imstb_rectpack.h",
    "imstb_textedit.h",
    "imstb_truetype.h",
    "imgui_demo.cpp"
  }

filter "system:Windows"
  systemversion "latest"
  cppdialect "C++17"
  
filter "configurations:Release"
  buildoptions "/MD"
  optimize "On"

filter "configurations:Debug"
  buildoptions "/MDd"
  symbols "On"

filter "configurations:Dist"
  buildoptions "/MDd"
  optimize "On"
