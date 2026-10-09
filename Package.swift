// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Adfurikun-SPM-AppLovin",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdfurikunAppLovin", targets: ["AdfurikunAppLovinTarget"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/glossom-dev/Adfurikun-SPM-Core.git",
            exact: "4.5.0-alpha.3"
        ),
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
            exact: "13.6.4"
        ),
    ],
    targets: [
        .target(
            name: "AdfurikunAppLovinTarget",
            dependencies: [
                .product(name: "AdfurikunSDK", package: "Adfurikun-SPM-Core"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "Sources",
            publicHeadersPath: "."
        )
    ]
)
