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
    
    @IBOutlet weak var player: UILabel!
    @IBOutlet weak var enemy: UILabel!
    
    //MARK: Logic Vars
    var playerScore:Int = 0
    var enemyScore:Int = 0
    var cardNameArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7",
        "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    //MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: App Logic
    @IBAction func dealButtonAction(sender: UIButton) {
        
        // Generating two random numbers for cards
        let firstRanNum:Int = Int(arc4random_uniform(13))
        let secondRanNum:Int = Int(arc4random_uniform(13))
        
        // constructing strings with card%i format
        let firstRanStr = cardNameArray[firstRanNum]
        let secondRanStr = cardNameArray[secondRanNum]
        
        // setting image view to the new card str named cards
        self.firstCardImageView.image = UIImage(named: firstRanStr)
        self.secondCardImageView.image = UIImage(named: secondRanStr)
    
    
        if firstRanNum > secondRanNum {
            
            self.playerScore += 1
            self.player.text = String(self.playerScore)
        }
        else if firstRanNum == secondRanNum {
            
        }
        else {
            
            self.enemyScore += 1
            self.enemy.text = String(self.enemyScore)
        }
        
        
    }

}

