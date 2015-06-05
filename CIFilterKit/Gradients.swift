//
//  Gradients.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/28/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

//TODO: restore inputColor1 when Apple fixes bug
public func GaussianGradient(#inputCenter: XYPosition?, #inputColor0: CIColor?, #inputColor1: CIColor?, #inputRadius: Double?) -> CIImage! {
    return Generator("CIGaussianGradient")([kCIInputCenterKey: inputCenter?.vector(), "inputColor0": inputColor0, "inputRadius": inputRadius])
}
public func LinearGradient(#inputPoint0: XYPosition?, #inputPoint1: XYPosition?, #inputColor0: CIColor?, #inputColor1: CIColor?) -> CIImage! {
    return Generator("CILinearGradient")(["inputPoint0": inputPoint0?.vector(), "inputPoint1": inputPoint1?.vector(), "inputColor0": inputColor0, "inputColor1": inputColor1])
}
public func RadialGradient(#inputCenter: XYPosition?, #inputRadius0: Double?, #inputRadius1: Double?, #inputColor0: CIColor?, #inputColor1: CIColor?) -> CIImage! {
    return Generator("CIRadialGradient")(["inputCenter": inputCenter?.vector(), "inputRadius0": inputRadius0, "inputRadius1": inputRadius1, "inputColor0": inputColor0, "inputColor1": inputColor1])
}
public func SmoothLinearGradient(#inputPoint0: XYPosition?, #inputPoint1: XYPosition?, #inputColor0: CIColor?, #inputColor1: CIColor?) -> CIImage! {
    return Generator("CISmoothLinearGradient")(["inputPoint0": inputPoint0?.vector(), "inputPoint1": inputPoint1?.vector(), "inputColor0": inputColor0, "inputColor1": inputColor1])
}