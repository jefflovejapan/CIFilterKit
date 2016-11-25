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
public func AdditionCompositing(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.AdditionCompositing.rawValue)(inputBackgroundImage)
}

/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func ColorBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.ColorBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func ColorBurnBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.ColorBurnBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func ColorDodgeBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.ColorDodgeBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func DarkenBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.DarkenBlendMode.rawValue)(inputBackgroundImage)
    
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func DifferenceBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.DifferenceBlendMode.rawValue)(inputBackgroundImage)
    
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func DivideBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.DivideBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func ExclusionBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.ExclusionBlendMode.rawValue)(inputBackgroundImage)
    
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func HardLightBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.HardLightBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func HueBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.HueBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func LightenBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.LightenBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func LinearBurnBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.LinearBurnBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func LinearDodgeBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.LinearDodgeBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func LuminosityBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.LuminosityBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func MaximumCompositing(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.MaximumCompositing.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func MinimumCompositing(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.MinimumCompositing.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func MultiplyBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.MultiplyBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func MultiplyCompositing(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.MultiplyCompositing.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func OverlayBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.OverlayBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func PinLightBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.PinLightBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func SaturationBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.SaturationBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func ScreenBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.ScreenBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func SoftLightBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.SoftLightBlendMode.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func SourceAtopCompositing(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.SourceAtopCompositing.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func SourceInCompositing(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.SourceInCompositing.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func SourceOutCompositing(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.SourceOutCompositing.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func SourceOverCompositing(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.SourceOverCompositing.rawValue)(inputBackgroundImage)
}
/**
- parameter inputBackgroundImage: The bottom image in the composition
- returns: A closure of type `Filter`
*/
public func SubtractBlendMode(_ inputBackgroundImage: CIImage) -> Filter {
    return Composer(FilterName.SubtractBlendMode.rawValue)(inputBackgroundImage)
}
