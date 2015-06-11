//
//  ViewController.swift
//  ExampleApp
//
//  Created by Jeffrey Blagdon on 6/4/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import UIKit
import CIFilterKit

class ViewController: UIViewController {
    var filters: FilterStack?
    override func viewDidLoad() {
        super.viewDidLoad()
        let colorInvert = ColorInvert()
        let colorPosterize = ColorPosterize(nil)
        filters = [colorInvert, colorPosterize]
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        var kevinBaconImg : UIImage!
        var kevinBaconCiImage: CIImage!
        kevinBaconImg = UIImage(named: "kevin")
        kevinBaconCiImage = CIImage(CGImage: kevinBaconImg.CGImage!)
        if let filters = filters, head = filters.first {
            let tail = Array(dropFirst(filters))
            let cumulativeFilter = reduce(tail, head, |>>)
            let outImg = cumulativeFilter(kevinBaconCiImage)
            let context = CIContext(options: nil)
            let cgImg = context.createCGImage(outImg, fromRect: outImg.extent())
            let imgView = (UIImageView(image: UIImage(CGImage: cgImg)))
            imgView.setTranslatesAutoresizingMaskIntoConstraints(false)
            imgView.contentMode = .ScaleAspectFill
            view.addSubview(imgView)
            view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|[kevin]|", options:.allZeros , metrics: nil, views: ["kevin": imgView]))
            view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[kevin]|", options:.allZeros , metrics: nil, views: ["kevin": imgView]))
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

