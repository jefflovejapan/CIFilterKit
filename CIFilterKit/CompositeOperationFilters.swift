//
//  CompositeOperationFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/26/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func AdditionCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIAdditionCompositing")(inputBackgroundImage)
}
public func ColorBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIColorBlendMode")(inputBackgroundImage)
}
public func ColorBurnBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIColorBurnBlendMode")(inputBackgroundImage)
}
public func ColorDodgeBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIColorDodgeBlendMode")(inputBackgroundImage)
}
public func DarkenBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIDarkenBlendMode")(inputBackgroundImage)
    
}
public func DifferenceBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIDifferenceBlendMode")(inputBackgroundImage)
    
}
public func DivideBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIDivideBlendMode")(inputBackgroundImage)
}
public func ExclusionBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIExclusionBlendMode")(inputBackgroundImage)
    
}
public func HardLightBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIHardLightBlendMode")(inputBackgroundImage)
}
public func HueBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIHueBlendMode")(inputBackgroundImage)
}
public func LightenBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CILightenBlendMode")(inputBackgroundImage)
}
public func LinearBurnBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CILinearBurnBlendMode")(inputBackgroundImage)
}
public func LinearDodgeBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CILinearDodgeBlendMode")(inputBackgroundImage)
}
public func LuminosityBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CILuminosityBlendMode")(inputBackgroundImage)
}
public func MaximumCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIMaximumCompositing")(inputBackgroundImage)
}
public func MinimumCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIMinimumCompositing")(inputBackgroundImage)
}
public func MultiplyBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIMultiplyBlendMode")(inputBackgroundImage)
}
public func MultiplyCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIMultiplyCompositing")(inputBackgroundImage)
}
public func OverlayBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIOverlayBlendMode")(inputBackgroundImage)
}
public func PinLightBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIPinLightBlendMode")(inputBackgroundImage)
}
public func SaturationBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CISaturationBlendMode")(inputBackgroundImage)
}
public func ScreenBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CIScreenBlendMode")(inputBackgroundImage)
}
public func SoftLightBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CISoftLightBlendMode")(inputBackgroundImage)
}
public func SourceAtopCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CISourceAtopCompositing")(inputBackgroundImage)
}
public func SourceInCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CISourceInCompositing")(inputBackgroundImage)
}
public func SourceOutCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CISourceOutCompositing")(inputBackgroundImage)
}
public func SourceOverCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CISourceOverCompositing")(inputBackgroundImage)
}
public func SubtractBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer("CISubtractBlendMode")(inputBackgroundImage)
}