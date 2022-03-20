//
//  ColorChangeViewController.swift
//  controllers
//
//  Created by Ashin Wang on 2022/3/20.
//

import UIKit

class ColorChangeViewController: UIViewController {

    //image
    @IBOutlet weak var objectImage: UIImageView!
    
    //slider
    @IBOutlet weak var redSliderOutlet: UISlider!
    @IBOutlet weak var greenSliderOutlet: UISlider!
    @IBOutlet weak var blueSliderOutlet: UISlider!
    @IBOutlet weak var alphaSliderOutlet: UISlider!
    
    //label
    @IBOutlet weak var redText: UILabel!
    @IBOutlet weak var greenText: UILabel!
    @IBOutlet weak var blueText: UILabel!
    @IBOutlet weak var alphaText: UILabel!
    
    let coinImage = ["B1","E1","L1"]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        redText.text = "0"
        greenText.text = "0"
        blueText.text = "0"
        alphaText.text = "0"
      
    }
    
    @IBAction func randomButton(_ sender: UIButton) {
        redSliderOutlet.setValue(Float.random(in: 0...1), animated: true)
        greenSliderOutlet.setValue(Float.random(in: 0...1), animated: true)
        blueSliderOutlet.setValue(Float.random(in: 0...1), animated: true)
        
        redText.text = String(format: "%.2f", redSliderOutlet.value)
        greenText.text = String(format: "%.2f", greenSliderOutlet.value)
        blueText.text = String(format: "%.2f", blueSliderOutlet.value)
        
        objectImage.backgroundColor = UIColor(red: CGFloat(redSliderOutlet.value), green: CGFloat(blueSliderOutlet.value), blue: CGFloat(blueSliderOutlet.value), alpha: CGFloat(alphaSliderOutlet.value))
        
    }
    
   
    @IBAction func changeColorSlider(_ sender: UISlider) {
        objectImage.backgroundColor = UIColor(red: CGFloat(redSliderOutlet.value), green: CGFloat(blueSliderOutlet.value), blue: CGFloat(blueSliderOutlet.value), alpha: CGFloat(alphaSliderOutlet.value))
        
        
        
        redText.text = String(format: "%.2f", redSliderOutlet.value)
        greenText.text = String(format: "%.2f", greenSliderOutlet.value)
        blueText.text = String(format: "%.2f", blueSliderOutlet.value)
        alphaText.text = String(format: "%.2f", alphaSliderOutlet.value)
    }
    
    @IBAction func changeImage(_ sender: UISegmentedControl) {
        index = sender.selectedSegmentIndex
        objectImage.image = UIImage(named: coinImage[index])
    }
    
    

}
