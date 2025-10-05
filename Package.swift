// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "VulnerableSPM2",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(name: "VulnerableSPM2", targets: ["VulnerableSPM2"]),
    ],
    dependencies: [
        // Intentionally outdated versions (historically vulnerable / deprecated)
        .package(url: "https://github.com/Alamofire/Alamofire.git", exact: "4.9.1"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", exact: "4.0.0"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", exact: "1.0.0"),
        .package(url: "https://github.com/daltoniam/Starscream.git", exact: "3.1.2"),
        .package(url: "https://github.com/onevcat/Kingfisher.git", exact: "4.10.1"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", exact: "5.1.1")
    ],
    targets: [
        .executableTarget(
            name: "VulnerableSPM2",
            dependencies: [
                "Alamofire",
                "SwiftyJSON",
                "CryptoSwift",
                "Starscream",
                "Kingfisher",
                .product(name: "RxSwift", package: "RxSwift")
            ]
        ),
        .testTarget(
            name: "VulnerableSPM2Tests",
            dependencies: ["VulnerableSPM2"]
        ),
    ]
)
