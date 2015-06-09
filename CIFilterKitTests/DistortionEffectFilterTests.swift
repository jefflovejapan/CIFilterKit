//
//  DistortionEffectFilterTests.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/27/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Quick
import Nimble
import CIFilterKit

class DistortionEffectFilterTests: QuickSpec {
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
        describe("The BumpDistortion filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = BumpDistortionOptions(inputCenter:XYPosition(x: 400.0, y: 600.0), inputRadius: 300.0, inputScale: 1.0)
                let aFilter = BumpDistortion(options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The BumpDistortionLinear filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = BumpDistortionLinearOptions(inputCenter:XYPosition(x: 400.0, y: 600.0), inputRadius: 500.0, inputAngle: 1.5, inputScale:0.5)
                let aFilter = BumpDistortionLinear(options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The CirlceSplashDistortion filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = CircleSplashDistortionOptions(inputCenter:XYPosition(x: 400.0, y: 600.0), inputRadius: 500.0)
                let aFilter = CircleSplashDistortion(options)
                let outImg = aFilter(kevinBaconCiImage)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The GlassDistortion filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = GlassDistortionOptions(inputCenter:XYPosition(x: 400.0, y: 600.0), inputScale: 200.0)
                let aFilter = GlassDistortion(kevinBaconCiImage, options:options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The HoleDistortion filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = HoleDistortionOptions(inputCenter:XYPosition(x: 400.0, y: 600.0), inputRadius:200.0)
                let aFilter = HoleDistortion(options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The LightTunnel filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = LightTunnelOptions(inputCenter:XYPosition(x: 400.0, y: 600.0),inputRotation: 0.75, inputRadius:200.0)
                let aFilter = LightTunnel(options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The PinchDistortion filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = PinchDistortionOptions(inputCenter:XYPosition(x: 400.0, y: 600.0),inputRadius:200.0, inputScale: 0.5)
                let aFilter = PinchDistortion(options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The TwirlDistortion filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = TwirlDistortionOptions()
                let aFilter = TwirlDistortion(options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The VortexDistortion filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = VortexDistortionOptions(inputCenter:XYPosition(x: 400.0, y: 600.0),inputRadius:400.0, inputAngle: 56.55)
                let aFilter = VortexDistortion(options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
    }
}
