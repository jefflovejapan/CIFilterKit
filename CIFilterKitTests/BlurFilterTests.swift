//
//  CIFilterKitTests.swift
//  CIFilterKitTests
//
//  Created by Jeffrey Blagdon on 5/16/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Quick
import Nimble
import CIFilterKit

class BlurFilterTests: QuickSpec {
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
        describe("The GaussianBlur filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                expect(GaussianBlur(inputRadius:10.0)(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The MotionBlur filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                expect(MotionBlur(inputRadius:10.0, inputAngle:10.0)(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ZoomBlur filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                expect(ZoomBlur(inputCenter: XYPosition(x:10.0, y:10.0), inputRadius:2.0)(kevinBaconCiImage)).toNot(beNil())
            }
        }
    }
}
