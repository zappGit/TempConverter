//
//  ViewController.swift
//  TConverter
//
//  Created by Артем Хребтов on 15.04.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var cenliusLable: UILabel!
    @IBOutlet weak var fahrenheitLable: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        let tempCels = Int(round(sender.value))
        cenliusLable.text = "\(tempCels)ºC"
        let farTemp = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLable.text = "\(farTemp)F"
        
    }
    
}

