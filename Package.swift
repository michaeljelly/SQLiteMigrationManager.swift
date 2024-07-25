// swift-tools-version:5.0
import PackageDescription

let package = Package(
  name: "SQLiteMigrationManager",
  products: [
    .library(name: "SQLiteMigrationManager", targets: ["SQLiteMigrationManager"])
  ],
  dependencies: [
    .package(url: "https://github.com/hosy/SQLiteSwift", .branch("master"))
  ],
  targets: [
    .target(
      name: "SQLiteMigrationManager",
      dependencies: ["SQLiteSwift"],
      path: "Sources",
      sources: ["SQLiteMigrationManager.swift"]),
    .testTarget(
      name: "SQLiteMigrationManagerTests",
      dependencies: ["SQLiteMigrationManager"],
      path: "Tests",
      sources: ["SQLiteMigrationManagerTests.swift"]),
  ])
