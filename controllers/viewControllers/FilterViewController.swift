//
//  FilterViewController.swift
//  controllers
//
//  Created by Ashin Wang on 2022/3/20.
//

import UIKit
import CoreImage.CIFilterBuiltins


class FilterViewController: UIViewController {
    
    @IBOutlet weak var sliderText: UILabel!
    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var colorChangeSlider: UISlider!
    
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func FliterSlider(_ sender: UISlider) {
        //產生物件轉換為CIImage
        let image = UIImage(named: "E2-2")
        let ciImage = CIImage(image: image!)
        //呼叫濾鏡功能
        let filter = CIFilter.colorControls()
        filter.inputImage = ciImage
        filter.saturation = sender.value
//        filter.intensity = sender.value
        if let outputCIImage = filter.outputImage{
            let filterImage = UIImage(ciImage: outputCIImage )
            showImage.image = filterImage
        }
        
        sliderText.text = String(format: "%.2f", colorChangeSlider.value)
        
    }
    @IBAction func effectSegmented(_ sender: UISegmentedControl) {
        index = sender.selectedSegmentIndex
        
        switch index {
        case 0 :
            showImage.image = UIImage(named: "E2-2")
        case 1 :
            //產生物件轉換為CIImage
            let image = UIImage(named: "E2-2")
            let ciImage = CIImage(image: image!)
            //呼叫濾鏡功能
            let filter = CIFilter.comicEffect()
            filter.setValue(ciImage, forKey: kCIInputImageKey)
            if let outputCIImage = filter.outputImage{
                let filterImage = UIImage(ciImage: outputCIImage )
                showImage.image = filterImage
            }
            
        case 2 :
            //產生物件轉換為CIImage
            let image = UIImage(named: "E2-2")
            let ciImage = CIImage(image: image!)
            //呼叫濾鏡功能
            let filter = CIFilter.colorMonochrome()
            filter.inputImage = ciImage
            filter.intensity = 1
            if let outputCIImage = filter.outputImage{
                let filterImage = UIImage(ciImage: outputCIImage )
                showImage.image = filterImage
            }
        default:
            break
        }
        
    }
    
}
