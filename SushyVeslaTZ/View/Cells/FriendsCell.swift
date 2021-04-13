//
//  FriendsCell.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 12.04.2021.
//

import UIKit

class FriendsCell: UICollectionViewCell {

    @IBOutlet weak var imageFriend: UIImageView!
    @IBOutlet weak var nameFriend: UILabel!
    
    weak var viewModel: CollectionViewCellModelFriends? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            nameFriend.text = viewModel.name
            imageFriend.image = UIImage(named: viewModel.image)
        }
    }
    
    func configure() {
        self.layer.cornerRadius = 12
        self.clipsToBounds = true
    }
    

}
