//
//  ViewController.swift
//  BetterThermostat
//
//  Created by Mohammad Azam on 7/12/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var temperatureLabel :UILabel!
    @IBOutlet weak var slider :UISlider!
    
    var temperature :Int = 72
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func upButtonPressed() {
        
        temperature += 1
        
        temperatureLabel.text = "\(temperature)"
        
        print(temperature)
        
        //print("up button is pressed")
    }
    
    @IBAction func downButtonPressed() {
        //print("down button pressed")
        
        temperature -= 1
        
         temperatureLabel.text = "\(temperature)"
        
        print(temperature)
        
    }
    
    @IBAction func sliderValueChanged() {
        
        temperatureLabel.text = String(format: "%0.f",slider.value)
        
        print("slider value changed")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

