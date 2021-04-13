//
//  ViewModel.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 13.04.2021.
//

import Foundation

class ViewModel: CollectionViewModelType {
    
    
   
    var balances = Balance.testBalance()
    var friends = Friend.testFriend()
    var services = Service.testService()
    
    func numberOfRowsBalance() -> Int {
        return balances.count
    }
    
    func numberOfRowsFriends() -> Int {
        return friends.count
    }
    
    func numberOfRowsService() -> Int {
        return services.count
    }
    
    func cellViewModelBalance(forIndexPath indexPath: IndexPath) -> CollectionViewCellModelBalance? {
        
        let balance = balances[indexPath.row]
        return CollectionViewCellViewModelBalance(balance: balance)
        
    }
    
    func cellViewModelFriend(forIndexPath indexPath: IndexPath) -> CollectionViewCellModelFriends? {
        let friend = friends[indexPath.row]
        return CollectionViewCellViewModelFriend(friend: friend)
    }
    
    
    
    func cellViewModelService(forIndexPath indexPath: IndexPath) -> CollectionViewCellModelService? {
        let service = services[indexPath.row]
        return CollectionViewCellViewModelService(service: service)
    }
    
    
}
