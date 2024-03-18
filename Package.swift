// swift-tools-version:5.0
import PackageDescription

let package = Package(
  name: "xlsxwriter.swift",
  products: [
    .library(name: "xlsxwriter", targets: ["xlsxwriter"])],
  targets: [
    .systemLibrary(name: "Cxlsxwriter",
                   pkgConfig: "xlsxwriter",
                   providers: [.brew(["xlibxlsxwriter"])]),
    .target(name: "xlsxwriter", dependencies: ["Cxlsxwriter"]),
    .testTarget(name: "xlsxwriterTests", dependencies: ["xlsxwriter"]),
  ])
