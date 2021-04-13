//
//  Balance.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 13.04.2021.
//

import Foundation

struct Balance {
    var money: String
}

extension Balance {
    static func testBalance() -> [Balance] {
        let balance1 = Balance(money: "20,600")
        let balance2 = Balance(money: "30,705")
        return [balance1, balance2]
    }
}
