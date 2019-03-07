//
//  ViewController.swift
//  HackwichFive
//
//  Created by Ryan B Domingo on 3/7/19.
//  Copyright © 2019 Ryan B Domingo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var UISlider: UISlider!
    //create a variable that can hold the value of the slider
    var currentValue: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderHasMoved(_ sender: Any) {
        
        print("The value of the slider is:\(UISlider.value)")
       
        currentValue = Int(UISlider.value)
        
    }
    @IBAction func myGuessButtonPressed(_ sender: Any) {
        
        //5. New variable message that dispalyes a message that includes current value
        
        let message = "The value is: \(currentValue)"
        
        //1. Create Alert View
        
        let alert = UIAlertController(title:"Hello World!", message: message, preferredStyle: .alert)
        
        //2. Button that user taps to dismiss view controller
        
        let  action = UIAlertAction(title: "Awesome", style: .default, handler:nil)
        
        //3. Add the button to the alertview
        
        alert.addAction(action)
        
        //4. present alertview on the screen
        
        present(alert, animated: true, completion:nil)
        
        
    }
    
}

