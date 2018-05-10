//
//  CompositeOperationFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/26/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func AdditionCompositing(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.AdditionCompositing.rawValue)(inputBackgroundImage)
}

/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func ColorBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.ColorBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func ColorBurnBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.ColorBurnBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func ColorDodgeBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.ColorDodgeBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func DarkenBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.DarkenBlendMode.rawValue)(inputBackgroundImage)
    
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func DifferenceBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.DifferenceBlendMode.rawValue)(inputBackgroundImage)
    
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func DivideBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.DivideBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func ExclusionBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.ExclusionBlendMode.rawValue)(inputBackgroundImage)
    
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func HardLightBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.HardLightBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func HueBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.HueBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func LightenBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.LightenBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func LinearBurnBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.LinearBurnBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func LinearDodgeBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.LinearDodgeBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func LuminosityBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.LuminosityBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func MaximumCompositing(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.MaximumCompositing.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func MinimumCompositing(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.MinimumCompositing.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func MultiplyBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.MultiplyBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func MultiplyCompositing(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.MultiplyCompositing.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func OverlayBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.OverlayBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func PinLightBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.PinLightBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func SaturationBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.SaturationBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func ScreenBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.ScreenBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func SoftLightBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.SoftLightBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func SourceAtopCompositing(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.SourceAtopCompositing.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func SourceInCompositing(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.SourceInCompositing.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func SourceOutCompositing(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.SourceOutCompositing.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func SourceOverCompositing(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.SourceOverCompositing.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func SubtractBlendMode(inputBackgroundImage: CIImage) -> Filter {
    return Composer(name: FilterName.SubtractBlendMode.rawValue)(inputBackgroundImage)
}
