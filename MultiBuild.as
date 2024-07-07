void main(MultiBuild::Workspace& workspace) {	
	auto project = workspace.create_project(".");
	auto properties = project.properties();

	properties.name("rapidfuzz-cpp");
	properties.binary_object_kind(MultiBuild::BinaryObjectKind::eNone);
	properties.license("./LICENSE");

	project.include_own_required_includes(true);
	project.add_required_project_include({
		"./src"
	});

	properties.files({
		"./rapidfuzz/**.h",
		"./rapidfuzz/**.hpp"
	});
}