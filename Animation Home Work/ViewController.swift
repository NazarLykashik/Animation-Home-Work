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
    
    
    
    func animate(animation: String, curve: String, force: CGFloat, duration: CGFloat, delay: CGFloat, repeatCount: Float){
        animationButton.animation = animation
        animationButton.curve = curve
        animationButton.force = force
        animationButton.duration = duration
        animationButton.delay = delay
        animationButton.repeatCount = repeatCount
        animationButton.animate()
        
        infoLabel.text = """
Animation: \(animation),
Curve: \(curve),
Forse: \(force),
Duration: \(duration),
Delay: \(delay),
Repeat Count: \(repeatCount).
"""
        
        infoLabel.animation = animation
        infoLabel.curve = curve
        infoLabel.force = force
        infoLabel.duration = duration
        infoLabel.delay = delay
        infoLabel.repeatCount = repeatCount
        infoLabel.animate()
    }
    

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
                animate(animation: "pop", curve: "linear", force: 2, duration: 1, delay: 0.5, repeatCount: 2)

                count += 1
            case 1:
                animate(animation: "squeeze", curve: "spring", force: 1, duration: 1, delay: 0.5, repeatCount: 3)
                count += 1

            default:
                animate(animation: "fadeIn", curve: "easeIn", force: 4, duration: 1, delay: 1, repeatCount: 3)


            }
    }
}



