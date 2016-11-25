//
//  Generators.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/27/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

/** 
    - parameter inputMessage: The message to be encoded
    - parameter options: An instance of `AztecCodeGeneratorOptions`
    - returns: The output `CIImage`
*/

public func AztecCodeGenerator(_ inputMessage: Data, options: AztecCodeGeneratorOptions) -> CIImage? {
    let parameters = [
        "inputMessage": inputMessage,
        "inputCorrectionLevel": options.inputCorrectionLevel,
        "inputLayers": options.inputLayers,
        "inputCompactStyle": options.inputCompactStyle
    ] as [String : Any]
    let filter = CIFilter(name: FilterName.AztecCodeGenerator.rawValue, withInputParameters:parameters)
    return filter?.outputImage
}

/**
- parameter options: An instance of `CheckerboardGenerator`
- returns: The output `CIImage`
*/

public func CheckerboardGenerator(_ options: CheckerboardGeneratorOptions) -> CIImage? {
    let parameters: Parameters = [
        kCIInputCenterKey: options.inputCenter.vector(),
        "inputColor0": options.inputColor0,
        "inputColor1": options.inputColor1,
        kCIInputWidthKey: options.inputWidth as AnyObject,
        kCIInputSharpnessKey: options.inputSharpness as AnyObject
    ]
    let filter = CIFilter(name: FilterName.CheckerboardGenerator.rawValue, withInputParameters: parameters)
    return filter?.outputImage
}

/**
- parameter inputMessage: The message to be encoded
- parameter inputQuietSpace: [The number of pixels of added white space on each side of the barcode](https://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICode128BarcodeGenerator)
- returns: The output `CIImage`
*/

public func Code128BarcodeGenerator(_ inputMessage:Data, inputQuietSpace:Double?) -> CIImage? {
    var parameters: Parameters = [
        "inputMessage": inputMessage as AnyObject
    ]
    if let quietSpace = inputQuietSpace {
        parameters["inputQuietSpace"] = quietSpace as AnyObject?
    }
    let filter = CIFilter(name: FilterName.Code128BarcodeGenerator.rawValue, withInputParameters:parameters)
    return filter?.outputImage
}

/**
- parameter inputColor: The color to be generated
- returns: The output `CIImage`
*/

public func ConstantColorGenerator(_ inputColor:CIColor) -> CIImage? {
    let parameters: Parameters = [
        "inputColor": inputColor
    ]
    let filter = CIFilter(name: FilterName.ConstantColorGenerator.rawValue, withInputParameters:parameters)
    return filter?.outputImage
}

/**
- parameter inputMessage: The message to be encoded
- parameter inputCorrectionLevel: [...The amount of additional data encoded in the output image to provide error correction](https://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIQRCodeGenerator)
- returns: The output `CIImage`
*/

public func QRCodeGenerator(_ inputMessage:Data, inputCorrectionLevel:ErrorCorrectionLevel?) -> CIImage? {
    var parameters: Parameters = [
        "inputMessage": inputMessage as AnyObject,
    ]
    if let correctionLevel = inputCorrectionLevel {
        parameters["inputCorrectionLevel"] = correctionLevel.rawValue as AnyObject?
    }
    let aFilter = CIFilter(name: FilterName.QRCodeGenerator.rawValue, withInputParameters: parameters)
    return aFilter?.outputImage
}

/**
Creates a `CIImage` full of random pixels.
- returns: The output `CIImage`
*/

public func RandomGenerator() -> CIImage? {
    let aFilter = CIFilter(name: FilterName.RandomGenerator.rawValue)
    return aFilter?.outputImage
}

/**
- parameter options: An instance of `StarShineGeneratorOptions`
- returns: The output `CIImage`
*/

public func StarShineGenerator(_ options: StarShineGeneratorOptions) -> CIImage? {
    let parameters = [
        kCIInputCenterKey: options.inputCenter.vector(),
        kCIInputColorKey: options.inputColor,
        kCIInputRadiusKey: options.inputRadius,
        "inputCrossScale": options.inputCrossScale,
        "inputCrossAngle": options.inputCrossAngle,
        "inputCrossOpacity": options.inputCrossOpacity,
        "inputCrossWidth": options.inputCrossWidth,
        "inputEpsilon": options.inputEpsilon
    ] as [String : Any]
    let aFilter = CIFilter(name: FilterName.StarShineGenerator.rawValue, withInputParameters: parameters)
    return aFilter?.outputImage
}

/**
- parameter options: An instance of `StripesGeneratorOptions`
- returns: The output `CIImage`
*/

public func StripesGenerator(_ options: StripesGeneratorOptions) -> CIImage? {
    let parameters = [
        kCIInputCenterKey: options.inputCenter.vector(),
        "inputColor0": options.inputColor0,
        "inputColor1": options.inputColor1,
        kCIInputWidthKey: options.inputWidth,
        kCIInputSharpnessKey: options.inputSharpness
    ] as [String : Any]
    let aFilter = CIFilter(name: FilterName.StripesGenerator.rawValue, withInputParameters: parameters)
    return aFilter?.outputImage
}
