//
//  ViewController.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 12.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInButton.layer.cornerRadius = 10
        signInButton.clipsToBounds = true
        
    }

    @IBAction func next(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
//        let vc = storyboard.instantiateViewController(identifier: "SliderViewController") as! SliderViewController
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
}

