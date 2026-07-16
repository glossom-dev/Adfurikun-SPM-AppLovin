// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Adfurikun-SPM-AppLovin",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdfurikunAppLovin", targets: ["AdfurikunAppLovin"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/glossom-dev/Adfurikun-SPM-Core.git",
            exact: "4.4.0"
        ),
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
            exact: "13.5.1"
        ),
    ],
    targets: [
        .target(
            name: "AdfurikunAppLovin",
            dependencies: [
                .product(name: "AdfurikunSDK", package: "Adfurikun-SPM-Core"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "Sources",
            publicHeadersPath: "."
        )
    ]
)
