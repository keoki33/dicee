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
        leftDice.image = #imageLiteral(resourceName: "DiceSix")
        rightDice.image = #imageLiteral(resourceName: "DiceTwo")
      
    }

}

