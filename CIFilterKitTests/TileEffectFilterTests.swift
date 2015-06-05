//
//  TileEffectFilterTests.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/3/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Quick
import Nimble
import CIFilterKit

class TileEffectFilterTests: QuickSpec {
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
        describe("The AffineClamp filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = AffineClamp(inputTransform: CGAffineTransformMakeRotation(0.81))
                
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The AffineTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = AffineTile(inputTransform: CGAffineTransformMakeRotation(0.81))
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The EightfoldReflectedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = EightfoldReflectedTile(inputCenter:XYPosition(x: 400.0, y: 400.0), inputAngle: 0.81, inputWidth: 150.0)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The FourfoldReflectedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = FourfoldReflectedTile(inputCenter: XYPosition(x:400.0, y:400.0), inputAngle: 0.81, inputAcuteAngle: 0.96, inputWidth: 150.0)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The FourfoldRotatedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = FourfoldRotatedTile(inputCenter: XYPosition(x:400.0, y:400.0), inputAngle: 0.81, inputWidth: 150.0)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The FourfoldTranslatedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = FourfoldTranslatedTile(inputCenter: XYPosition(x:400.0, y:400.0), inputAngle: 0.81, inputAcuteAngle: 0.96, inputWidth: 150.0)

                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The GlideReflectedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = GlideReflectedTile(inputCenter: XYPosition(x:400.0, y:400.0), inputAngle: 0.81, inputWidth: 150.0)

                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The SixfoldReflectedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = SixfoldReflectedTile(inputCenter: XYPosition(x:400.0, y:400.0), inputAngle: 0.81, inputWidth: 150.0)
                
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The SixfoldRotatedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = SixfoldRotatedTile(inputCenter: XYPosition(x:400.0, y:400.0), inputAngle: 0.81, inputWidth: 150.0)
                
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The TriangleKaleidoscope filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = TriangleKaleidoscope(inputPoint: XYPosition(x: 400.0, y: 400.0), inputSize: 150.0, inputRotation: 0.40, inputDecay: 1.65)
                
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The TwelvefoldReflectedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = TwelvefoldReflectedTile(inputCenter: XYPosition(x:400.0, y:400.0), inputAngle: 0.81, inputWidth: 150.0)
                
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        
        
    }
}