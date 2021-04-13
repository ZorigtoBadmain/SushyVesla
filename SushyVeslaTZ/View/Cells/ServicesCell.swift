//
//  ServicesCell.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 12.04.2021.
//

import UIKit

class ServicesCell: UICollectionViewCell {

    @IBOutlet weak var labelServices: UILabel!
    @IBOutlet weak var imageServices: UIImageView!
    @IBOutlet weak var view: UIView!
    
    weak var viewModel: CollectionViewCellModelService? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            labelServices.text = viewModel.name
            imageServices.image = UIImage(named: viewModel.image)
        }
    }
    
    func configure() {
        view.layer.cornerRadius = 12
        view.clipsToBounds = true
    }
}
