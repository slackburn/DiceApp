//
//  ViewController.swift
//  DiceApp
//
//  Created by Codenation13 on 17/09/2018.
//  Copyright © 2018 samblackburn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceImageArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDice1 : Int = 0
    var randomDice2 : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        rollDice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        rollDice()
    }
    
    func rollDice() {

        randomDice1 = Int(arc4random_uniform(6))
        randomDice2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceImageArray[randomDice1])
        diceImageView2.image = UIImage(named: diceImageArray[randomDice2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }
    
}

