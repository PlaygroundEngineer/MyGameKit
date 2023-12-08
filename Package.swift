// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyGameKit",
    platforms: [
           .iOS(.v16), // Specify the iOS version
           // .tvOS(.v13) for tvOS
       ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyGameKit",
            targets: ["MyGameKit"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyGameKit"),
        .testTarget(
            name: "MyGameKitTests",
            dependencies: ["MyGameKit"]),
    ]
)
