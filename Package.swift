// swift-tools-version:6.0

import PackageDescription

let package = Package(
	name: "CLua",
	products: [
		.library(name: "CLua", type: .static, targets: ["CLua"]),
	],
	targets: [
		.target(
            name: "CLua",
            dependencies: [],
            cSettings: [
                .define("LUA_USE_MACOSX"),
            ]
        )
	]
)
