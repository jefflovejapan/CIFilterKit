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
            let filePath = Bundle(for: self.classForCoder).path(forResource: "bacon", ofType: "jpg")!
            let imgData = FileManager.default.contents(atPath: filePath)!
            kevinBaconImg = UIImage(data: imgData)!
            expect(kevinBaconImg).toNot(beNil())
            kevinBaconCiImage = CIImage(cgImage: kevinBaconImg.cgImage!)
            expect(kevinBaconCiImage).toNot(beNil())
        }
        describe("The ColorControls filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = ColorControls(options: ColorControlsOptions())
                let outImg = aFilter(kevinBaconCiImage)
                expect(outImg).toNot(beNil())
            }
        }
        describe("The ColorMatrix filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = ColorMatrix(options: ColorMatrixOptions())
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ExposureAdjust filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = ExposureAdjust(inputEV: -0.2)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The GammaAdjust filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = GammaAdjust(inputPower: 0.5)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The HueAdjust filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = HueAdjust(inputAngle: -0.5)
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
                let aFilter = TemperatureAndTint(options: TemperatureAndTintOptions())
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ToneCurve filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = ToneCurve(options: ToneCurveOptions())
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The Vibrance filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = Vibrance(inputAmount: 0.5)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The WhitePointAdjust filter") {
            it("Should be able to filter a picture of Kevin Bacon") {
                let aFilter = WhitePointAdjust(inputColor: nil)
                let outImg = aFilter(kevinBaconCiImage)
                expect(outImg).toNot(beNil())
            }
        }
        
    }
}
