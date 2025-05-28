// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SurrealTouchSDK",
    
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SurrealTouchSDK",
            targets: ["SurrealInteractiveSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ericdusel-tri/SurrealOpenXRBinary.git", revision: ("c450bd8768668aa64b7472da76c777c1dba938fa")),
    ],
    targets: [
        .target(name: "SurrealInteractiveSDK",
                dependencies:[
                    .product(name:"openxr-framework", package:"SurrealOpenXRBinary")
                ],
                cSettings: [],
                linkerSettings:[
                    .unsafeFlags(["-lc++"])
                ]
               )
    ]
)
