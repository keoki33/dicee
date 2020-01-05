//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlet allows me to reference a UI element
    
    @IBOutlet weak var leftDice: UIImageView!
       
    @IBOutlet weak var rightDice: UIImageView!
    
  

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        leftDice.image = #imageLiteral(resourceName: "DiceOne")
//        rightDice.image = #imageLiteral(resourceName: "DiceOne")
      
    }

    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
    let diceArray  =  [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    var count = 0
        
        var _ = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true){ t in
            count += 1
            let leftDiceIndex = Int.random(in: 0...5)
            let rightDiceIndex = Int.random(in: 0...5)
            self.leftDice.image = diceArray[leftDiceIndex]
            self.rightDice.image = diceArray[rightDiceIndex]
            print("left dice= \(leftDiceIndex + 1)")
            if count >= 5 {
                t.invalidate()
            }
        }
            }
    
            

    
    


    


}
