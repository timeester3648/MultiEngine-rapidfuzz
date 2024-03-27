include "../../premake/common_premake_defines.lua"

project "rapidfuzz-cpp"
	kind "None"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"

	files {
		"./rapidfuzz/**.h",
		"./rapidfuzz/**.hpp"
	}