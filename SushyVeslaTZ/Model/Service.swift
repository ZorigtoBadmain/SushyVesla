//
//  Service.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 13.04.2021.
//

import Foundation

struct Service {
    var name: String
    var image: String
}

extension Service {
    static func testService() -> [Service] {
    let service1 = Service(name: "Send Money", image: "Send Money")
    let service2 = Service(name: "Receive Money", image: "Receive Money")
    let service3 = Service(name: "Mobile Prepaid", image: "Mobile Prepaid")
    let service4 = Service(name: "Electricity Bill", image: "Electricity Bill")
    let service5 = Service(name: "Cashback Offer", image: "Cashback Offer")
    let service6 = Service(name: "Movie Tickets", image: "Movie Tickets")
    let service7 = Service(name: "Flight Tickets", image: "Flight Tickets")
    let service8 = Service(name: "More Options", image: "More Options")
    
    return [service1, service2, service3, service4, service5, service6, service7, service8]
    }
}
