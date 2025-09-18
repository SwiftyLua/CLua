// swift-tools-version:5.5

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
              .define("LUA_USE_MACOSX", .when(platforms: [.macOS])),
              .define("LUA_USE_IOS", .when(platforms: [.iOS, .macCatalyst, .tvOS])),
              .define("LUA_USE_LINUX", .when(platforms: [.linux])),
              .define("LUA_USE_WINDOWS", .when(platforms: [.windows])),
            ]
        )
	]
)
