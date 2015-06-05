//
//  CompositeOperationFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/26/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Quick
import Nimble
import CIFilterKit

class CompositeOperationFilterTests: QuickSpec {
    override func spec() {
        var kevinBaconImg : UIImage!
        var kevinBaconCiImage: CIImage!
        var rhinocerosImg : UIImage!
        var rhinocerosCiImg: CIImage!
        beforeEach {
            let filePath = NSBundle(forClass: self.classForCoder).pathForResource("bacon", ofType: "jpg")!
            let imgData = NSData(contentsOfFile: filePath)!
            kevinBaconImg = UIImage(data: imgData)!
            expect(kevinBaconImg).toNot(beNil())
            kevinBaconCiImage = CIImage(CGImage: kevinBaconImg.CGImage!)
            expect(kevinBaconCiImage).toNot(beNil())
            
            let rhinoFilePath = NSBundle(forClass: self.classForCoder).pathForResource("rhinoceros", ofType: "jpg")!
            let rhinoImgData = NSData(contentsOfFile: rhinoFilePath)!
            rhinocerosImg = UIImage(data: rhinoImgData)!
            expect(rhinocerosImg).toNot(beNil())
            rhinocerosCiImg = CIImage(CGImage: rhinocerosImg.CGImage!)
            expect(rhinocerosCiImg).toNot(beNil())
            
        }
        describe("The AdditionCompositing filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = AdditionCompositing(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ColorBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = ColorBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ColorBurnBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = ColorBurnBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ColorDodgeBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = ColorDodgeBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The DarkenBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = DarkenBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The DifferenceBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = DifferenceBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The DivideBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = DivideBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ExclusionBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = ExclusionBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The HardLightBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = HardLightBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The HueLightBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = HueBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The LightenBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = LightenBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The LinearBurnBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = LinearBurnBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The LinearDodgeBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = LinearDodgeBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The LuminosityBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = LuminosityBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The MaximumCompositing filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = MaximumCompositing(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The MinimumCompositing filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = MinimumCompositing(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The MultiplyBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = MultiplyBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The MultiplyCompositing filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = MultiplyCompositing(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The OverlayBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = OverlayBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The PinLightBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = PinLightBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The SaturationBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = SaturationBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ScreenBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = ScreenBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The SoftLightBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = SoftLightBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The SourceAtopCompositing filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = SourceAtopCompositing(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The SourceInCompositing filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = SourceInCompositing(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The SourceOutCompositing filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = SourceOutCompositing(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The SourceOverCompositing filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = SourceOverCompositing(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The SubtractBlendMode filter") {
            it("should be able to compose a picture of Kevin Bacon with a picture of a rhinoceros") {
                let aFilter = SubtractBlendMode(inputBackgroundImage:rhinocerosCiImg)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        
    }
}