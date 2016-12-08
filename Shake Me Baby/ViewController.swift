//
//  ViewController.swift
//  Shake Me Baby
//
//  Created by William Thomas Mangan on 11/23/16.
//  Copyright © 2016 William Mangan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    let diceArray : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func Roll(_ sender: Any) {
        changeDiceFace()
    }
    
    
    func changeDiceFace() {
        
        let firstRandomIndex = Int(arc4random_uniform(6))
        let secondRandomIndex = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[firstRandomIndex])
        diceImageView2.image = UIImage(named: diceArray[secondRandomIndex])
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        changeDiceFace()
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // TODO: SHAKE GESTURE
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        changeDiceFace()
        
    }
    
        
 }
    
    





