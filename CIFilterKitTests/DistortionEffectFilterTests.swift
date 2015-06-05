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
                let aFilter = BumpDistortion(inputCenter:XYPosition(x: 400.0, y: 600.0), inputRadius: 300.0, inputScale: 1.0)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The BumpDistortionLinear filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = BumpDistortionLinear(inputCenter:XYPosition(x: 400.0, y: 600.0), inputRadius: 500.0, inputAngle: 1.5, inputScale:0.5)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The CirlceSplashDistortion filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = CircleSplashDistortion(inputCenter:XYPosition(x: 400.0, y: 600.0), inputRadius: 500.0)
                let outImg = aFilter(kevinBaconCiImage)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The GlassDistortion filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = GlassDistortion(inputTexture:kevinBaconCiImage, inputCenter:XYPosition(x: 400.0, y: 600.0), inputScale: 200.0)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The HoleDistortion filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = HoleDistortion(inputCenter:XYPosition(x: 400.0, y: 600.0), inputRadius:200.0)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The LightTunnel filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = LightTunnel(inputCenter:XYPosition(x: 400.0, y: 600.0),inputRotation: 0.75, inputRadius:200.0)
                let outImg = aFilter(kevinBaconCiImage)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The PinchDistortion filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = PinchDistortion(inputCenter:XYPosition(x: 400.0, y: 600.0),inputRadius:200.0, inputScale: 0.5)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The TwirlDistortion filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = TwirlDistortion(inputCenter:XYPosition(x: 400.0, y: 600.0),inputRadius:200.0, inputAngle: 2.5)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The VortexDistortion filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = VortexDistortion(inputCenter:XYPosition(x: 400.0, y: 600.0),inputRadius:400.0, inputAngle: 56.55)
                let outImg = aFilter(kevinBaconCiImage)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
    }
}
