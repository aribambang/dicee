//
//  ViewController.swift
//  dicee
//
//  Created by Ari Bambang Kurniawan on 29/05/20.
//  Copyright © 2020 Ari Bambang Kurniawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceNumberView: UILabel!
    
    var angkaKanan = 0
    var angkaKiri = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let angkaKanan = Int.random(in: 0...5)
        let angkaKiri = Int.random(in: 0...5)
        diceImageView2.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][angkaKanan]
        diceImageView1.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][angkaKiri]
        diceNumberView.text = "\(angkaKanan+angkaKiri+2)"
        
    }
    
}

