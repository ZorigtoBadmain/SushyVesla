//
//  HomeViewController.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 12.04.2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let composition: CompositionLayout = CompositionLayout()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionConfigure()
    }
    
    private func collectionConfigure() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.collectionViewLayout = composition.createCompositionLayout()
        self.composition.registerBalanceCells(self.collectionView)
        self.composition.registerFriendsCells(self.collectionView)
        self.composition.registerServicesCells(self.collectionView)
    }
    
    @IBAction func openSiderbar(_ sender: Any) {
    }

}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 3
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 2
        case 1:
            return 5
        case 2:
            return 8
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BalanceCell", for: indexPath) as! BalanceCell
            
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendsCell", for: indexPath) as! FriendsCell
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ServicesCell", for: indexPath) as! ServicesCell
            return cell
        default:
            break
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch indexPath.section {
        case 0:
            let suppView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HeaderCollectionReusableView", for: indexPath) as! HeaderCollectionReusableView
            suppView.headerLabel.text = "Account Overview"
            return suppView
        case 1:
            let suppView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HeaderCollectionReusableView", for: indexPath) as! HeaderCollectionReusableView
            suppView.headerLabel.text = "Send Money"
            suppView.imageHeader.image = UIImage(systemName: "car")
            return suppView
        case 2:
            let suppView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HeaderCollectionReusableView", for: indexPath) as! HeaderCollectionReusableView
            suppView.headerLabel.text = "Services"
            suppView.imageHeader.image = UIImage(systemName: "tray")
            return suppView
        default:
            break
        }
        
        return UICollectionReusableView()
        
        
        
    }
    
}
