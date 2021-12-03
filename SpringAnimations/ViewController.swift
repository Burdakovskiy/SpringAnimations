//
//  ViewController.swift
//  SpringAnimations
//
//  Created by Дмитрий on 02.12.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var animationView: SpringView!
    
    var animation = Animation.getRandomAnimation()
    
    @IBAction func nextAnimationButtonTapped(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
}

