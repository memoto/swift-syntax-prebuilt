
// swift-tools-version:6.0

import PackageDescription

var targets = [
        "SwiftBasicFormat",
        "SwiftCompilerPlugin",
        "SwiftCompilerPluginMessageHandling",
        "SwiftDiagnostics",
        "SwiftIDEUtils",
        "SwiftLibraryPluginProvider",
        "SwiftOperators",
        "SwiftParser",
        "SwiftParserDiagnostics",
        "SwiftRefactor",
        "SwiftSyntax",
        "SwiftSyntaxBuilder",
        "SwiftSyntaxMacroExpansion",
        "SwiftSyntaxMacros",
        "SwiftSyntaxMacrosGenericTestSupport",
        "SwiftSyntaxMacrosTestSupport",
]

var checksums = [
        "SwiftBasicFormat" : "b7c829a4b7cfe4d9231076ccbc429943e3b770f16ea15c98d0136e9b1a400d36",
        "SwiftCompilerPlugin" : "37e3f5f5a57480dec4446bd02a4da25b215b97433655f75230449e7e3f04f659",
        "SwiftCompilerPluginMessageHandling" : "d3d0d924db07aad79fb9c43e98ec114861bb85e12cbe6605169e5ffb4f4e2306",
        "SwiftDiagnostics" : "72215a59b9f97d7a7718189a24605db2773cea0a7b9a9da63ac093e873f404ea",
        "SwiftIDEUtils" : "0e58f925a67cb098d7bad2bda7fb4c50f8ea84532e076eb23f94e6d11e0e2d29",
        "SwiftLibraryPluginProvider" : "cb0630fac4a759802c2d70134a4d3dc40286a4eb1cd13410ae77aa76376a8b7a",
        "SwiftOperators" : "6486852da05493c5018cd1a1ab80be599937cbb9690227cb2001d47546700a59",
        "SwiftParser" : "3107d250e1e8e5d2dbbfab161fc82837e115c6a097a33458c48fd6206035d26a",
        "SwiftParserDiagnostics" : "e3d1cce702b837610085c1f3773cd7600822d495d5a98bd2380ae183b9036d0e",
        "SwiftRefactor" : "c03b6fa4b840a144db9064624ce09923b3d3f0a729f19064dd5c1d668932b7da",
        "SwiftSyntax" : "b89f9337ac5d9468efd7ba75078ae304c28d30d1d3aef6c35b9618841e3a4a31",
        "SwiftSyntaxBuilder" : "5630c169ee6b1746ad751e9a3e746dce624838e3587d84e51e215adf81e70c84",
        "SwiftSyntaxMacroExpansion" : "c984a7b4c7070b212acd33b554d88afd978ec5ec128e3d942e732af91041bbfc",
        "SwiftSyntaxMacros" : "fae4415d659cbeb69562d2944e974e073469aa1e0ac524b24e09daf18acb95e8",
        "SwiftSyntaxMacrosGenericTestSupport" : "a3ec7280c1241d350d7c51878ebf4e2dfe2b77a9b66cca9c4ed635b0249d956a",
        "SwiftSyntaxMacrosTestSupport" : "0ccf900dfca92e94dbdd75d5dc628a068334fe7cd42b8b041cff8f9277aa5c74",
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
            url: "https://github.com/memoto/swift-syntax-prebuilt/releases/download/600.0.1/\($0).zip",
            checksum: checksums[$0] ?? ""
        )
    }
)