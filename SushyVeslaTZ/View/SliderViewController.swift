//
//  SliderViewController.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 13.04.2021.
//

import UIKit

class SliderViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var contentViewSlider: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    var constraintLeading: CGFloat = 0
    var constraintTrailing: CGFloat = 0
    var constraintTop: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        leadingConstraint.constant = constraintLeading
        trailingConstraint.constant = constraintTrailing
        topConstraint.constant = constraintTop
        contentViewSlider.layer.cornerRadius = 30
        contentViewSlider.clipsToBounds = true
        
        topView.layer.cornerRadius = 30
        topView.clipsToBounds = true
        
    }
    
    @IBAction func closeSlider(_ sender: Any) {

        UIView.animate(withDuration: 1.0, delay: 1.2, options: .curveEaseOut, animations: {
            self.leadingConstraint.constant = 0
            self.trailingConstraint.constant = 0
            self.topConstraint.constant = 0
        }, completion: { finished in
          print("Napkins opened!")
        })
    }
}
