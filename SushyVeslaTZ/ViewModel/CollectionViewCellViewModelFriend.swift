//
//  CollectionViewCellViewModelFriend.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 13.04.2021.
//

import Foundation

class CollectionViewCellViewModelFriend: CollectionViewCellModelFriends {
    
    private var friend: Friend
    
    var name: String {
        return friend.name
    }
    
    var image: String {
        return friend.image
    }
    
    init(friend: Friend) {
        self.friend = friend
    }
    
}
