// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SimilaritySearchKit",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(
            name: "SimilaritySearchKit",
            targets: ["SimilaritySearchKit"]
        ),
        .library(
            name: "SimilaritySearchKitDistilbert",
            targets: ["SimilaritySearchKitDistilbert"]
        ),
        .library(
            name: "SimilaritySearchKitMiniLMAll",
            targets: ["SimilaritySearchKitMiniLMAll"]
        ),
        .library(
            name: "SimilaritySearchKitMiniLMMultiQA",
            targets: ["SimilaritySearchKitMiniLMMultiQA"]
        ),
    ],
    targets: [
        .target(
            name: "SimilaritySearchKit",
            dependencies: [],
            path: "Sources/SimilaritySearchKit/Core",
            resources: [.process("Resources")]
        ),
        .target(
            name: "SimilaritySearchKitDistilbert",
            dependencies: ["SimilaritySearchKit"],
            path: "Sources/SimilaritySearchKit/AddOns/Embeddings/Distilbert"
        ),
        .target(
            name: "SimilaritySearchKitMiniLMAll",
            dependencies: ["SimilaritySearchKit"],
            path: "Sources/SimilaritySearchKit/AddOns/Embeddings/MiniLMAll"
        ),
        .target(
            name: "SimilaritySearchKitMiniLMMultiQA",
            dependencies: ["SimilaritySearchKit"],
            path: "Sources/SimilaritySearchKit/AddOns/Embeddings/MiniLMMultiQA"
        ),
    ]
)
