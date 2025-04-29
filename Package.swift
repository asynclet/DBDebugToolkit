// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "DBDebugToolkit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DBDebugToolkit",
            targets: [
                "DBDebugToolkitSwift",
                "DBDebugToolkitObjC",
                "DBDebugToolkitCommon"
            ]
        ),
    ],
    targets: [
        .target(
            name: "DBDebugToolkitCommon",
            path: "DBDebugToolkit/Common"
        ),
        .target(
            name: "DBDebugToolkitObjC",
            dependencies: [
                "DBDebugToolkitCommon"
            ],
            path: "DBDebugToolkit/ObjC",
            publicHeadersPath: "Headers"
        ),
        .target(
            name: "DBDebugToolkitSwift",
            dependencies: [
                "DBDebugToolkitObjC",
            ],
            path: "DBDebugToolkit/Swift"
        )
    ]
)
