//
//  GeometryAdjustmentFilterTests.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/1/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Quick
import Nimble
import CIFilterKit

class GeometryAdjustmentFilterTests: QuickSpec {
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
        describe("The AffineTransform filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = AffineTransform(inputTransform: CGAffineTransformMakeRotation(1.9))
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The Crop filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = Crop(inputRectangle:CGRect(x: 100.0, y: 100.0, width: 400.0, height: 400.0))
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The LanczosScaleTransform filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = LanczosScaleTransform(inputScale: 0.7, inputAspectRatio:1.0)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The PerspectiveCorrection filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = PerspectiveCorrection(inputTopLeft: XYPosition(x: 20.0, y: 500.0), inputTopRight: XYPosition(x: 340.0, y: 600.0), inputBottomLeft: XYPosition(x: 40.0, y: 600.0), inputBottomRight: XYPosition(x: 380.0, y: 700.0))
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The PerspectiveTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = PerspectiveTile(inputTopLeft: XYPosition(x: 20.0, y: 500.0), inputTopRight: XYPosition(x: 340.0, y: 600.0), inputBottomLeft: XYPosition(x: 40.0, y: 600.0), inputBottomRight: XYPosition(x: 380.0, y: 700.0))
                
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The PerspectiveTransformWithExtent filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = PerspectiveTransformWithExtent(inputExtent:kevinBaconCiImage.extent(), inputTopLeft: XYPosition(x: 20.0, y: 500.0), inputTopRight: XYPosition(x: 340.0, y: 600.0), inputBottomLeft: XYPosition(x: 40.0, y: 600.0), inputBottomRight: XYPosition(x: 380.0, y: 700.0))
                let outImg = aFilter(kevinBaconCiImage)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The StraightenFilter filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = StraightenFilter(inputAngle:1.21)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        
        
    }
}
