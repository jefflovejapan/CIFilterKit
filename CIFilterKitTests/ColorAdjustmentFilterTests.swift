//
//  ColorAdjustmentFilterTests.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/25/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Quick
import Nimble
import CIFilterKit


class ColorAdjustmentFilterTests: QuickSpec {
    override func spec() {
        var kevinBaconImg : UIImage!
        var kevinBaconCiImage: CIImage!
        beforeEach {
            let filePath = NSBundle(forClass: self.classForCoder).pathForResource("bacon", ofType: "jpg")!
            let imgData = NSData(contentsOfFile: filePath)!
            kevinBaconImg = UIImage(data: imgData)!
            expect(kevinBaconImg).toNot(beNil())
            kevinBaconCiImage = CIImage(CGImage: kevinBaconImg.CGImage!)
            expect(kevinBaconCiImage).toNot(beNil())
        }
        describe("The ColorControls filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = ColorControls(inputSaturation:0.9, inputBrightness:0.1, inputContrast: 0.9)
                let outImg = aFilter(kevinBaconCiImage)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ColorMatrix filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = ColorMatrix(inputRVector: RGBAComponents(r: 0.7, g: 0.5, b: 0.2, a: 1.0), inputGVector: RGBAComponents(r: 0.7, g: 0.5, b: 0.2, a: 1.0), inputBVector: RGBAComponents(r: 0.7, g: 0.5, b: 0.2, a: 1.0), inputAVector: RGBAComponents(r: 0.7, g: 0.5, b: 0.2, a: 1.0), inputBiasVector: RGBAComponents(r: 0.7, g: 0.5, b: 0.2, a: 1.0))
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ExposureAdjust filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = ExposureAdjust(inputEV:0.7)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The GammaAdjust filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = GammaAdjust(inputPower:0.7)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The HueAdjust filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = HueAdjust(inputAngle:0.7)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The LinearToSRGBToneCurve filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = LinearToSRGBToneCurve()
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The SRGBToneCurveToLinear filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = SRGBToneCurveToLinear()
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The TemperatureAndTint filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = TemperatureAndTint(inputNeutral:TempAndTint(temp:6500.0, tint: 0.0), targetInputNeutral:TempAndTint(temp: 9500.0, tint: 35.0))
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ToneCurve filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let point0 = XYOffset(x: 0.6, y: 0.2)
                let point1 = XYOffset(x: 0.3, y: 0.4)
                let point4 = XYOffset(x: 0.9, y: 0.1)
                let aFilter = ToneCurve(inputPoint0: point0, inputPoint1: point1, inputPoint2: nil, inputPoint3: nil, inputPoint4: point4)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The Vibrance filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = Vibrance(inputAmount:500.0)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The WhitePointAdjust filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = WhitePointAdjust(inputColor:CIColor(red:0.6, green:0.1, blue: 0.9, alpha:1.0))
                let outImg = aFilter(kevinBaconCiImage)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        
    }
}
