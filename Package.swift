// swift-tools-version:5.3

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
            #if os(macOS)
            cSettings: [
                .define("LUA_USE_MACOSX")
            ]
            #endif
            #if os(Linux)
            cSettings: [
                .define("LUA_USE_LINUX")
            ]
            #endif
        )
	]
)
