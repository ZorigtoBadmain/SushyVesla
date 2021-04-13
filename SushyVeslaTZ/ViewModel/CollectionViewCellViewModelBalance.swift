//
//  TableViewCellViewModel.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 13.04.2021.
//

import Foundation

class CollectionViewCellViewModelBalance: CollectionViewCellModelBalance {
    
    private var balance: Balance
    
    var money: String {
        return balance.money
    }
    
    init(balance: Balance) {
        self.balance = balance
    }
    
    
}
