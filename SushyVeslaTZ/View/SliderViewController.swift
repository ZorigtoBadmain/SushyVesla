//
//  SliderViewController.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 13.04.2021.
//

import UIKit



class SliderViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    
    var delegate: FoodViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topView.layer.cornerRadius = 30
        topView.clipsToBounds = true
        
    }
    
    @IBAction func closeSlider(_ sender: Any) {

        delegate?.toggleMenu()
    }
}
