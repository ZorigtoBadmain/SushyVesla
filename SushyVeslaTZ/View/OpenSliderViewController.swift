//
//  OpenSliderViewController.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 13.04.2021.
//

import UIKit

class OpenSliderViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let composition: CompositionLayout = CompositionLayout()
    private var viewModel: CollectionViewModelType?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()

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
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "SliderViewController") as! SliderViewController
        vc.modalPresentationStyle = .fullScreen
        vc.constraintLeading = 200
        vc.constraintTrailing = -200
        vc.constraintTop = 100
        present(vc, animated: true, completion: nil)
    }

}

extension OpenSliderViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 3
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return viewModel?.numberOfRowsBalance() ?? 0
        case 1:
            return viewModel?.numberOfRowsFriends() ?? 0
        case 2:
            return viewModel?.numberOfRowsService() ?? 0
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BalanceCell", for: indexPath) as? BalanceCell
            
            guard let collectionCell = cell, let viewModel = viewModel else { return UICollectionViewCell() }
            
            let cellViewModel = viewModel.cellViewModelBalance(forIndexPath: indexPath)
            collectionCell.viewModel = cellViewModel
            collectionCell.configure()
            return collectionCell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendsCell", for: indexPath) as? FriendsCell
            guard let collectionCell = cell, let viewModel = viewModel else { return UICollectionViewCell() }
            
            let cellViewModel = viewModel.cellViewModelFriend(forIndexPath: indexPath)
            collectionCell.viewModel = cellViewModel
            collectionCell.configure()
            return collectionCell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ServicesCell", for: indexPath) as? ServicesCell
            guard let collectionCell = cell, let viewModel = viewModel else { return UICollectionViewCell() }
            
            let cellViewModel = viewModel.cellViewModelService(forIndexPath: indexPath)
            collectionCell.viewModel = cellViewModel
            collectionCell.configure()
            return collectionCell
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
            suppView.imageHeader.image = UIImage(named: "Group 75")
            return suppView
        case 2:
            let suppView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HeaderCollectionReusableView", for: indexPath) as! HeaderCollectionReusableView
            suppView.headerLabel.text = "Services"
            suppView.imageHeader.image = UIImage(named: "Vector-4")
            return suppView
        default:
            break
        }
        
        return UICollectionReusableView()
        
        
        
    }
    
}
