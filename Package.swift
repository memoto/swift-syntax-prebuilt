

// swift-tools-version:6.0

import PackageDescription

var targets = [
        "SwiftBasicFormat",
]

var checksums = [
        "SwiftBasicFormat" : "9cf33a5d858017acd29fdaeb18ffdf1a7fb9d19eb54351b9cf118ee0c182c085",
]

let package = Package(
    name: "SwiftSyntax",
    products: [
        .library(
            name: "SwiftSyntaxWrapper",
            targets: targets
        ),
    ],
    targets: targets.map {
        .binaryTarget(
            name: $0, 
            url: "//releases/download//\($0).zip",
            checksum: checksums[$0]
        )
    }
)