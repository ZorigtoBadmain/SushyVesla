//
//  CollectionViewModelType.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 13.04.2021.
//

import Foundation

protocol CollectionViewModelType {
    func numberOfRowsBalance() -> Int
    func numberOfRowsFriends() -> Int
    func numberOfRowsService() -> Int
    func cellViewModelBalance(forIndexPath indexPath: IndexPath) -> CollectionViewCellModelBalance?
    func cellViewModelFriend(forIndexPath indexPath: IndexPath) -> CollectionViewCellModelFriends?
    func cellViewModelService(forIndexPath indexPath: IndexPath) -> CollectionViewCellModelService?
}
