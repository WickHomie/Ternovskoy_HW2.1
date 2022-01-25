//
//  ViewController.swift
//  TernovskoyIA_HW2.1
//
//  Created by Илья Терновской on 24.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum AllLights {
        case red, yellow, green
    }

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    let lightOn: CGFloat = 1
    let lightOff: CGFloat = 0.3
    var allLights = AllLights.red
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = lightOff
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
       }
    
    

    @IBAction func startButtonPressed() {
        startButton.setTitle("Next", for: .normal)
        
        switch allLights {
        case .red:
            greenLight.alpha = lightOff
            redLight.alpha = lightOn
            allLights = .yellow
        case .yellow:
            redLight.alpha = lightOff
            yellowLight.alpha = lightOn
            allLights = .green
        case .green:
            yellowLight.alpha = lightOff
            greenLight.alpha = lightOn
            allLights = .red
        }
    
    }
    
}
