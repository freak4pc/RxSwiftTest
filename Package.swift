// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "RxSwiftTest",
    platforms: [
        .macOS(.v10_10), .iOS(.v8), .tvOS(.v9), .watchOS(.v3)
    ],
    products: [
        .library(name: "RxTest", type: .dynamic, targets: ["RxTest"]),
        .library(name: "RxBlocking", type: .dynamic, targets: ["RxBlocking"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", .branch("spm-test"))
    ],
    targets: [
        .target(name: "RxBlocking", dependencies: ["RxSwift"], path: "RxSwift/Sources/RxBlocking"),
        .target(name: "RxTest", dependencies: ["RxSwift"], path: "RxSwift/Sources/RxTest")
    ]
)
