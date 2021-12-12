//
//  ViewController.swift
//  colorSliders
//
//  Created by Artem Zhuzhgin on 12.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    
    @IBOutlet var greenValuelabel: UILabel!
    
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        viewColor.layer.cornerRadius = 10
        
        super.viewDidLoad()
       
    }

    @IBAction func redSliderMove(_ sender: UISlider) {
        viewColor.backgroundColor = UIColor.init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
        let roundTwoNambers = round(redSlider.value * 100) / 100
        redValueLabel.text = String(roundTwoNambers)
        
        
    }
    
  
    @IBAction func grenSliderMove(_ sender: UISlider) {
        viewColor.backgroundColor = UIColor.init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        let roundTwoNambers = round(greenSlider.value * 100) / 100
        greenValuelabel.text = String(roundTwoNambers)
    }
    
    @IBAction func blueSliderMove(_ sender: UISlider) {
        viewColor.backgroundColor = UIColor.init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        let roundTwoNambers = round(blueSlider.value * 100) / 100
        blueValueLabel.text = String(roundTwoNambers)
    }
    
}

