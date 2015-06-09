//
//  HalftoneEffectFilterTests.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/28/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Quick
import Nimble
import CIFilterKit

class HalftoneEffectFilterTests: QuickSpec {
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
        describe("The CircularScreen filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = CircularScreenOptions(inputCenter:XYPosition(x: 300.0, y: 600.0), inputWidth: 400.0, inputSharpness: 0.75)
                let aFilter = CircularScreen(options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The DotScreen filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = DotScreenOptions(inputCenter:XYPosition(x: 300.0, y: 600.0), inputAngle:0.70,  inputWidth: 400.0, inputSharpness: 0.75)
                let aFilter = DotScreen(options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The HatchedScreen filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = HatchedScreenOptions(inputCenter:XYPosition(x: 300.0, y: 600.0), inputAngle:0.70,  inputWidth: 400.0, inputSharpness: 0.75)
                let aFilter = HatchedScreen(options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The LineScreen filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = LineScreenOptions(inputCenter:XYPosition(x: 300.0, y: 600.0), inputAngle:0.70,  inputWidth: 400.0, inputSharpness: 0.75)
                let aFilter = LineScreen(options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
    }
}