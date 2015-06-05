//
//  Generators.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/27/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func AztecCodeGenerator(#inputMessage: NSData?, #inputCorrectionLevel: Double?, #inputLayers: Double?, #inputCompactStyle: Double?) -> CIImage! {
    return Generator("CIAztecCodeGenerator")(["inputMessage": inputMessage, "inputCorrectionLevel": inputCorrectionLevel, "inputLayers": inputLayers, "inputCompactStyle": inputCompactStyle])
}
public func CheckerboardGenerator(#inputCenter: XYPosition?, #inputColor0: CIColor?, #inputColor1: CIColor?, #inputWidth: Double?, #inputSharpness:Double?) -> CIImage! {
    return Generator("CICheckerboardGenerator")([kCIInputCenterKey: inputCenter?.vector(), kCIInputWidthKey:inputWidth, kCIInputSharpnessKey: inputSharpness, "inputColor0": inputColor0, "inputColor1": inputColor1])
}
public func Code128BarcodeGenerator(#inputMessage:NSData?, #inputQuietSpace:Double?) -> CIImage! {
    return Generator("CICode128BarcodeGenerator")(["inputMessage":inputMessage, "inputQuietSpace": inputQuietSpace]);
}
public func ConstantColorGenerator(#inputColor:CIColor?) -> CIImage! {
    return Generator("CIConstantColorGenerator")([kCIInputColorKey: inputColor]);
}
public func QRCodeGenerator(#inputMessage:NSData?, #inputCorrectionLevel:ErrorCorrectionLevel?) -> CIImage! {
    return Generator("CIQRCodeGenerator")(["inputMessage": inputMessage, "inputCorrectionLevel": inputCorrectionLevel?.rawValue])
}
public func RandomGenerator() -> CIImage! {
    return Generator("CIRandomGenerator")(OptionalParameters())

}
public func StarShineGenerator(#inputCenter: XYPosition?, #inputColor:CIColor?, #inputRadius: Double?, #inputCrossScale: Double?, #inputCrossAngle: Double?, #inputCrossOpacity: Double?, #inputCrossWidth: Double?, #inputEpsilon: Double?) -> CIImage! {
    return Generator("CIStarShineGenerator")([kCIInputCenterKey: inputCenter?.vector(), kCIInputColorKey: inputColor, kCIInputRadiusKey: inputRadius, "inputCrossScale": inputCrossScale, "inputCrossAngle": inputCrossAngle, "inputCrossOpacity": inputCrossOpacity, "inputCrossWidth": inputCrossWidth, "inputEpsilon": inputEpsilon])
}
public func StripesGenerator(#inputCenter: XYPosition?, #inputColor0: CIColor?, #inputColor1: CIColor?, #inputWidth: Double?, #inputSharpness: Double?) -> CIImage! {
    return Generator("CIStripesGenerator")([kCIInputCenterKey: inputCenter?.vector(), "inputColor0": inputColor0, "inputColor1": inputColor1, kCIInputWidthKey: inputWidth, kCIInputSharpnessKey: inputSharpness])
}