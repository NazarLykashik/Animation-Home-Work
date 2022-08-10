//
//  ViewController.swift
//  Animation Home Work
//
//  Created by Nazar Lykashik on 10.08.22.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationButton: SpringButton!
    @IBOutlet var infoLabel: SpringLabel!
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationButton.animate()
        animationView.animate()
        infoLabel.text = "Start"
        animationButton.setTitle("Start Spring Animation", for: .normal)
        animationView.layer.cornerRadius = 5

        
        
        
    }
    @IBAction func startAnimation(_ sender: SpringButton) {
            switch count{
            case 0:
                animationButton.animation = "pop"
                animationButton.curve = "linear"
                animationButton.force = 2
                animationButton.duration = 1
                animationButton.delay = 0.5
                animationButton.repeatCount = 2
                animationButton.animate()
                infoLabel.text = #"""
Animation pop
Curve linear
Forse 2
"""#
                
                infoLabel.animation = "pop"
                infoLabel.curve = "linear"
                infoLabel.force = 2
                infoLabel.duration = 1
                infoLabel.delay = 0.5
                infoLabel.repeatCount = 2
                infoLabel.animate()
                count = 1
            case 1:
                animationButton.animation = "squeeze"
                animationButton.curve = "spring"
                animationButton.force = 1
                animationButton.duration = 1
                animationButton.delay = 0.5
                animationButton.repeatCount = 3
                animationButton.animate()
                infoLabel.text = #"""
Animation squeeze
Curve spring
Forse 1
"""#
                
                infoLabel.animation = "squeeze"
                infoLabel.curve = "spring"
                infoLabel.force = 1
                infoLabel.duration = 1
                infoLabel.delay = 0.5
                infoLabel.repeatCount = 3
                infoLabel.animate()
                count = 3

            default:
                animationButton.animation = "fadeOut"
                animationButton.curve = "easeIn"
                animationButton.force = 4
                animationButton.duration = 1
                animationButton.delay = 0.5
                infoLabel.text = #"""
Animation fadeOut
Curve easeIn
Forse 2
"""#
                
                infoLabel.animation = "fadeOut"
                infoLabel.curve = "easeIn"
                infoLabel.force = 4
                infoLabel.duration = 1
                infoLabel.delay = 3
                
                infoLabel.animate()
                animationButton.animate()
            }
    }
}
