// swift-tools-version:5.9                                                                                     
import PackageDescription                                                                                      
                                                                                                               
let package = Package(                                                                                         
    name: "PrimalShared",                                                                                      
    platforms: [.iOS(.v16)],                                                                                   
    products: [                                                                                                
        .library(name: "PrimalShared", targets: ["PrimalShared"])                                              
    ],                                                                                                         
    targets: [                                                                                                 
        .binaryTarget(                                                                                         
            name: "PrimalShared",                                                                              
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.2/PrimalShared.xcframework.zip",                                                                                
            checksum: "6b1c3b06c8a5133c8031afbf52ebdd689e277fd6ccc923d08890a9a16a1adc72"                                                                       
        )                                                                                                      
    ]                                                                                                          
)
