//
//  Generators.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/27/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func AztecCodeGenerator(inputMessage: NSData, #options: AztecCodeGeneratorOptions) -> CIImage {
    let parameters = [
        "inputMessage": inputMessage,
        "inputCorrectionLevel": options.inputCorrectionLevel,
        "inputLayers": options.inputLayers,
        "inputCompactStyle": options.inputCompactStyle
    ]
    let filter = CIFilter(name: FilterName.AztecCodeGenerator.rawValue, withInputParameters:parameters)
    return filter.outputImage
}

public func CheckerboardGenerator(options: CheckerboardGeneratorOptions) -> CIImage {
    let parameters: Parameters = [
        kCIInputCenterKey: options.inputCenter.vector(),
        "inputColor0": options.inputColor0,
        "inputColor1": options.inputColor1,
        kCIInputWidthKey: options.inputWidth,
        kCIInputSharpnessKey: options.inputSharpness
    ]
    let filter = CIFilter(name: FilterName.CheckerboardGenerator.rawValue)
    return filter.outputImage
}


public func Code128BarcodeGenerator(inputMessage:NSData, #inputQuietSpace:Double?) -> CIImage {
    var parameters: Parameters = [
        "inputMessage": inputMessage
    ]
    if let quietSpace = inputQuietSpace {
        parameters["inputQuietSpace"] = quietSpace
    }
    let filter = CIFilter(name: FilterName.Code128BarcodeGenerator.rawValue, withInputParameters:parameters)
    return filter.outputImage
}

public func ConstantColorGenerator(inputColor:CIColor) -> CIImage {
    var parameters: Parameters = [
        "inputColor": inputColor
    ]
    let filter = CIFilter(name: FilterName.ConstantColorGenerator.rawValue, withInputParameters:parameters)
    return filter.outputImage
}

public func QRCodeGenerator(inputMessage:NSData, #inputCorrectionLevel:ErrorCorrectionLevel?) -> CIImage {
    var parameters: Parameters = [
        "inputMessage": inputMessage,
    ]
    if let correctionLevel = inputCorrectionLevel {
        parameters["inputCorrectionLevel"] = correctionLevel.rawValue
    }
    let aFilter = CIFilter(name: FilterName.QRCodeGenerator.rawValue, withInputParameters: parameters)
    return aFilter.outputImage
}

public func RandomGenerator() -> CIImage {
    let aFilter = CIFilter(name: FilterName.RandomGenerator.rawValue)
    return aFilter.outputImage
}

public func StarShineGenerator(options: StarShineGeneratorOptions) -> CIImage {
    let parameters = [
        kCIInputCenterKey: options.inputCenter.vector(),
        kCIInputColorKey: options.inputColor,
        kCIInputRadiusKey: options.inputRadius,
        "inputCrossScale": options.inputCrossScale,
        "inputCrossAngle": options.inputCrossAngle,
        "inputCrossOpacity": options.inputCrossOpacity,
        "inputCrossWidth": options.inputCrossWidth,
        "inputEpsilon": options.inputEpsilon
    ]
    let aFilter = CIFilter(name: FilterName.StarShineGenerator.rawValue, withInputParameters: parameters)
    return aFilter.outputImage
}

public func StripesGenerator(options: StripesGeneratorOptions) -> CIImage {
    let parameters = [
        kCIInputCenterKey: options.inputCenter.vector(),
        "inputColor0": options.inputColor0,
        "inputColor1": options.inputColor1,
        kCIInputWidthKey: options.inputWidth,
        kCIInputSharpnessKey: options.inputSharpness
    ]
    let aFilter = CIFilter(name: FilterName.StripesGenerator.rawValue, withInputParameters: parameters)
    return aFilter.outputImage
}