//
//  BalanceCell.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 12.04.2021.
//

import UIKit

class BalanceCell: UICollectionViewCell {

    @IBOutlet weak var balance: UILabel!
   
    weak var viewModel: CollectionViewCellModelBalance? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            balance.text = viewModel.money
        }
    }
    
    func configure() {
        self.layer.cornerRadius = 12
        self.clipsToBounds = true
    }

}
