//
//  Friend.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 13.04.2021.
//

import Foundation

struct Friend {
    var image: String
    var name: String
}

extension Friend {
    static func testFriend() -> [Friend] {
        let friend1 = Friend(image: "Mike", name: "Mike")
        let friend2 = Friend(image: "Joshpeh", name: "Joshpeh")
        let friend3 = Friend(image: "Ashley", name: "Ashley")
        let friend4 = Friend(image: "Mike", name: "Joshpeh")
        let friend5 = Friend(image: "Joshpeh", name: "Ashley")
        let friend6 = Friend(image: "Ashley", name: "Mike")
        return [friend1, friend2, friend3, friend4, friend5, friend6]
    }
}
