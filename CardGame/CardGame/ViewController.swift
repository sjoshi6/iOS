//
//  ViewController.swift
//  CardGame
//
//  Created by Saurabh Joshi on 10/27/15.
//  Copyright © 2015 SaurabhApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Vars
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var dealButton: UIButton!
    
    
    //MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Changing the button text in normal mode
        self.dealButton.setTitle("Play", forState: UIControlState.Normal)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealButtonAction(sender: UIButton) {
        
        self.firstCardImageView.image = UIImage(named: "card12")
        self.secondCardImageView.image = UIImage(named: "card1")
    }

}

