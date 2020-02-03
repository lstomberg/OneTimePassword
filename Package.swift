// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "OneTimePassword",
    platforms: [
        .iOS(.v8),
        .watchOS(.v2)
    ],
    products: [
        .library(name: "OneTimePassword", targets: ["OneTimePassword"])
    ],
    dependencies: [
        .package(url: "https://github.com/mattrubin/Bases.git", .branch("develop"))
    ],
    targets: [
        .target(
            name: "OneTimePassword",
            dependencies: [
                "Base32",
            ],
            path: "Sources"
        ),
    ]
)