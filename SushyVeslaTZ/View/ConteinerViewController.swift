//
//  ConteinerViewController.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 15.04.2021.
//

import UIKit

class ConteinerViewController: UIViewController, FoodViewControllerDelegate {

    var homeViewController: UIViewController!
    var sliderViewController: UIViewController!
    var isMove = false

    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeViewController()

    }

    func configureHomeViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        vc.delegate = self
        homeViewController = vc
        addChild(homeViewController)
        view.addSubview(homeViewController.view)
        homeViewController.didMove(toParent: self)
    }

    func configureSliderViewController() {
        
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "SliderViewController") as! SliderViewController
            vc.delegate = self
            sliderViewController = vc
            addChild(sliderViewController)
            view.insertSubview(sliderViewController.view, at: 0)
            sliderViewController.didMove(toParent: self)
            print("Add sliderViewController")
        
    }

    func showHomeViewController(shouldMove: Bool) {
        if shouldMove {
            // показываем меню
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseOut) {
                self.homeViewController.view.frame.origin.x = self.homeViewController.view.frame.width - 200
                self.homeViewController.view.frame.origin.y = self.homeViewController.view.frame.height - 650
                self.homeViewController.view.layer.cornerRadius = 30
            } completion: { (finished) in

            }

        } else {
            // убираем меню
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseOut) {
                self.homeViewController.view.frame.origin.x = 0
                self.homeViewController.view.frame.origin.y = 0
                self.homeViewController.view.layer.cornerRadius = 0
            } completion: { (finished) in
                self.sliderViewController.remove()
                print("Remove homeViewController")
            }
        }
    }

    func toggleMenu() {

        if !isMove {
            configureSliderViewController()
        }
        isMove = !isMove
        showHomeViewController(shouldMove: isMove)
    }

}

extension UIViewController {
    func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }

    func remove() {
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
