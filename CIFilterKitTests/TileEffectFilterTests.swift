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
            let filePath = Bundle(for: self.classForCoder).path(forResource: "bacon", ofType: "jpg")!
            let imgData = FileManager.default.contents(atPath: filePath)!
            kevinBaconImg = UIImage(data: imgData)!
            expect(kevinBaconImg).toNot(beNil())
            kevinBaconCiImage = CIImage(cgImage: kevinBaconImg.cgImage!)
            expect(kevinBaconCiImage).toNot(beNil())
        }
        describe("The AffineClamp filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = AffineClamp(inputTransform: CGAffineTransform(rotationAngle: 0.81))
                
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The AffineTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = AffineTile(inputTransform: CGAffineTransform(rotationAngle: 0.81))
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The EightfoldReflectedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = TileOptions(inputCenter:XYPosition(x: 400.0, y: 400.0), inputAngle: 0.81, inputWidth: 150.0)
                let aFilter = EightfoldReflectedTile(options: options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The FourfoldReflectedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = TileOptionsWithAcuteAngle(inputCenter: XYPosition(x:400.0, y:400.0), inputAngle: 0.81, inputAcuteAngle: 0.96, inputWidth: 150.0)
                let aFilter = FourfoldReflectedTile(options: options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The FourfoldRotatedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = TileOptions(inputCenter: XYPosition(x:400.0, y:400.0), inputAngle: 0.81, inputWidth: 150.0)
                let aFilter = FourfoldRotatedTile(options: options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The FourfoldTranslatedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = TileOptionsWithAcuteAngle(inputCenter: XYPosition(x:400.0, y:400.0), inputAngle: 0.81, inputAcuteAngle: 0.96, inputWidth: 150.0)
                let aFilter = FourfoldTranslatedTile(options: options)

                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The GlideReflectedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = TileOptions(inputCenter: XYPosition(x:400.0, y:400.0), inputAngle: 0.81, inputWidth: 150.0)
                let aFilter = GlideReflectedTile(options: options)

                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The SixfoldReflectedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = TileOptions(inputCenter: XYPosition(x:400.0, y:400.0), inputAngle: 0.81, inputWidth: 150.0)
                let aFilter = SixfoldReflectedTile(options: options)
                
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The SixfoldRotatedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = TileOptions(inputCenter: XYPosition(x:400.0, y:400.0), inputAngle: 0.81, inputWidth: 150.0)
                let aFilter = SixfoldRotatedTile(options: options)
                
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The TriangleKaleidoscope filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = TriangleKaleidoscopeOptions(inputPoint: XYPosition(x: 400.0, y: 400.0), inputSize: 150.0, inputRotation: 0.40, inputDecay: 1.65)
                let aFilter = TriangleKaleidoscope(options: options)
                
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The TwelvefoldReflectedTile filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = TileOptions(inputCenter: XYPosition(x:400.0, y:400.0), inputAngle: 0.81, inputWidth: 150.0)
                let aFilter = TwelvefoldReflectedTile(options: options)
                
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        
        
    }
}
