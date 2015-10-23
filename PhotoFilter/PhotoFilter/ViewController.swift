//
//  ViewController.swift
//  PhotoFilter
//
//  Created by Saurabh Joshi on 10/22/15.
//  Copyright © 2015 SaurabhApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoImg: UIImageView!
    let context = CIContext(options: nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func filter(sender: AnyObject) {
        
        // Capturing the input image and using CIImage
        let input_img = CIImage(image: photoImg.image!)
        
        let random_color = [kCIInputAngleKey: (Double(arc4random_uniform(314))/100)]
        
        // Apply filter
        let filtered_img = input_img!.imageByApplyingFilter("CIHueAdjust", withInputParameters: random_color)
        
        // Getting a rendered image from original image
        let rendered_img =  context.createCGImage(filtered_img, fromRect: filtered_img.extent)
        
        
        // setting photoImg image to rendered img after converting to UIImage
        photoImg.image = UIImage(CGImage: rendered_img)
        
    }

}

