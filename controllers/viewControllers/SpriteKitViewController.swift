//
//  SpriteKitViewController.swift
//  controllers
//
//  Created by Ashin Wang on 2022/3/20.
//

import UIKit
import SpriteKit

class SpriteKitViewController: UIViewController {

    @IBOutlet weak var apeImageView: UIImageView!
    
    let showImage = ["BA02","BA03"]
    var index = 0
    var effectIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func effectController(_ sender: UISegmentedControl) {
        effectIndex = sender.selectedSegmentIndex
        
        switch effectIndex {
        case 0 :
            let skView = SKView(frame: view.frame)
            view.insertSubview(skView, at: 0)
            let scene = SKScene(size: skView.frame.size)
            scene.backgroundColor = .lightText
            scene.anchorPoint = CGPoint(x: 0.5, y: 0.25)
            let emitterNode = SKEmitterNode(fileNamed: "MySmokeParticle")
            scene.addChild(emitterNode!)
            skView.presentScene(scene)
            
        case 1 :
            
            let skView = SKView(frame: view.frame)
            view.insertSubview(skView, at: 0)
            let scene = SKScene(size: skView.frame.size)
            scene.backgroundColor = .cyan
            scene.anchorPoint = CGPoint(x: 0.5, y: 1)
            let emitterNode = SKEmitterNode(fileNamed: "MyParticle")
            scene.addChild(emitterNode!)
            skView.presentScene(scene)
        default :
            break
        }
    }
    
    @IBAction func imageController(_ sender: UISegmentedControl) {
        index = sender.selectedSegmentIndex
        apeImageView.image = UIImage(named: showImage[index])
    }
}
