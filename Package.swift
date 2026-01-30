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
            url: "REPLACE_URL",                                                                                
            checksum: "REPLACE_CHECKSUM"                                                                       
        )                                                                                                      
    ]                                                                                                          
)
