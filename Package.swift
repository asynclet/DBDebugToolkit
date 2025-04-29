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
            name: "DBDebugToolkitResources",
            path: "DBDebugToolkit/Resources",
            publicHeadersPath: "."
        ),
        .target(
            name: "DBDebugToolkitObjC",
            dependencies: [
                "DBDebugToolkitResources",
                "DBDebugToolkitCommon"
            ],
            path: "DBDebugToolkit/ObjC",
            publicHeadersPath: "Headers"
        ),
        .target(
            name: "DBDebugToolkitSwift",
            dependencies: [
                "DBDebugToolkitObjC",
                "DBDebugToolkitResources",
            ],
            path: "DBDebugToolkit/Swift"
        )
    ]
)
