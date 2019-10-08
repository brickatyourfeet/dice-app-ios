//
//  ViewController.swift
//  dice-app
//
//  Created by Kyle Braden on 10/1/19.
//  Copyright © 2019 Kyle Braden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceIndex = Int.random(in: 0...5)
        randomDiceIndex2 = Int.random(in: 0...5)
        
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex + 1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2 + 1)")
    }
    
}
