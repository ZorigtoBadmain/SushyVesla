//
//  CompositionLayout.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 12.04.2021.
//

import Foundation
import UIKit

class CompositionLayout {
    
    
    func registerBalanceCells(_ collectionView: UICollectionView) {
        let goodsNib = UINib(nibName: "BalanceCell", bundle: nil)
        collectionView.register(goodsNib, forCellWithReuseIdentifier: "BalanceCell")
    }
    
    func registerFriendsCells(_ collectionView: UICollectionView) {
        let goodsNib = UINib(nibName: "FriendsCell", bundle: nil)
        collectionView.register(goodsNib, forCellWithReuseIdentifier: "FriendsCell")
    }
    
    func registerServicesCells(_ collectionView: UICollectionView) {
        let goodsNib = UINib(nibName: "ServicesCell", bundle: nil)
        collectionView.register(goodsNib, forCellWithReuseIdentifier: "ServicesCell")
    }
    
    func createCompositionLayout() -> UICollectionViewLayout {
        
        let layout = UICollectionViewCompositionalLayout { sectionIndex, layoutEnviroment in

            switch sectionIndex {
            case 0:
                return self.createRecommentSection(with: sectionIndex)
            case 1:
                return self.createFriendsSection(with: sectionIndex)
            case 2:
                return self.createServicesSection(with: sectionIndex)
            default:
                return self.createRecommentSection(with: sectionIndex)
            }
        }
        
        return layout
    }
    
    func createRecommentSection(with withIndexPath: Int) -> NSCollectionLayoutSection {

        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(0.6))

        let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
        layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15)

        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.9), heightDimension: .estimated(250))
        let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [layoutItem])

        let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
        layoutSection.contentInsets =  NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 10, trailing: 10)
        layoutSection.orthogonalScrollingBehavior = .continuous
        let sectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.95), heightDimension: .estimated(65))
        let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: sectionHeaderSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        layoutSection.boundarySupplementaryItems = [layoutSectionHeader]
        return layoutSection

    }
    
    func createFriendsSection(with withIndexPath: Int) -> NSCollectionLayoutSection {

        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(0.6))

        let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
        layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)

        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.56), heightDimension: .estimated(250))
        let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [layoutItem])

        let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
        layoutSection.contentInsets =  NSDirectionalEdgeInsets(top: 5, leading: 20, bottom: 10, trailing: 5)
        layoutSection.orthogonalScrollingBehavior = .continuous
        let sectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(65))
        let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: sectionHeaderSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        layoutSection.boundarySupplementaryItems = [layoutSectionHeader]
        return layoutSection

    }
    
    func createServicesSection(with withIndexPath: Int) -> NSCollectionLayoutSection {

        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.2), heightDimension: .fractionalHeight(1))

        let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
        layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)

        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.2))
        let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [layoutItem])

        let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
        layoutSection.contentInsets =  NSDirectionalEdgeInsets(top: 5, leading: 20, bottom: 10, trailing: 5)
        layoutSection.orthogonalScrollingBehavior = .continuous
        let sectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(65))
        let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: sectionHeaderSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        layoutSection.boundarySupplementaryItems = [layoutSectionHeader]
        return layoutSection

    }
    
   
}
