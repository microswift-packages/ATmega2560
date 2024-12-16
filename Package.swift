// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ATmega2560",
    products: [
        .library(
            name: "ATmega2560",
            targets: ["ATmega2560"]),
    ],
    dependencies: [.package(path: "/Users/carl/Documents/Code/HALGEN/build/ATmega2560//../HAL")],
    targets: [
        .target(
            name: "ATmega2560",
            dependencies: [],
            path: ".",
            sources: ["main.swift"]),
    ]
)
