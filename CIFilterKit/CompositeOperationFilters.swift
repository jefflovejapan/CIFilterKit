//
//  CompositeOperationFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/26/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func AdditionCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.AdditionCompositing.rawValue)(inputBackgroundImage)
}
public func ColorBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.ColorBlendMode.rawValue)(inputBackgroundImage)
}
public func ColorBurnBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.ColorBurnBlendMode.rawValue)(inputBackgroundImage)
}
public func ColorDodgeBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.ColorDodgeBlendMode.rawValue)(inputBackgroundImage)
}
public func DarkenBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.DarkenBlendMode.rawValue)(inputBackgroundImage)
    
}
public func DifferenceBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.DifferenceBlendMode.rawValue)(inputBackgroundImage)
    
}
public func DivideBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.DivideBlendMode.rawValue)(inputBackgroundImage)
}
public func ExclusionBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.ExclusionBlendMode.rawValue)(inputBackgroundImage)
    
}
public func HardLightBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.HardLightBlendMode.rawValue)(inputBackgroundImage)
}
public func HueBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.HueBlendMode.rawValue)(inputBackgroundImage)
}
public func LightenBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.LightenBlendMode.rawValue)(inputBackgroundImage)
}
public func LinearBurnBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.LinearBurnBlendMode.rawValue)(inputBackgroundImage)
}
public func LinearDodgeBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.LinearDodgeBlendMode.rawValue)(inputBackgroundImage)
}
public func LuminosityBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.LuminosityBlendMode.rawValue)(inputBackgroundImage)
}
public func MaximumCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.MaximumCompositing.rawValue)(inputBackgroundImage)
}
public func MinimumCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.MinimumCompositing.rawValue)(inputBackgroundImage)
}
public func MultiplyBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.MultiplyBlendMode.rawValue)(inputBackgroundImage)
}
public func MultiplyCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.MultiplyCompositing.rawValue)(inputBackgroundImage)
}
public func OverlayBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.OverlayBlendMode.rawValue)(inputBackgroundImage)
}
public func PinLightBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.PinLightBlendMode.rawValue)(inputBackgroundImage)
}
public func SaturationBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.SaturationBlendMode.rawValue)(inputBackgroundImage)
}
public func ScreenBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.ScreenBlendMode.rawValue)(inputBackgroundImage)
}
public func SoftLightBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.SoftLightBlendMode.rawValue)(inputBackgroundImage)
}
public func SourceAtopCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.SourceAtopCompositing.rawValue)(inputBackgroundImage)
}
public func SourceInCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.SourceInCompositing.rawValue)(inputBackgroundImage)
}
public func SourceOutCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.SourceOutCompositing.rawValue)(inputBackgroundImage)
}
public func SourceOverCompositing(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.SourceOverCompositing.rawValue)(inputBackgroundImage)
}
public func SubtractBlendMode(#inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.SubtractBlendMode.rawValue)(inputBackgroundImage)
}