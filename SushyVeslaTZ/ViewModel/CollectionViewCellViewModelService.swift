//
//  CollectionViewCellViewModelService.swift
//  SushyVeslaTZ
//
//  Created by Зоригто Бадмаин on 13.04.2021.
//

import Foundation

class CollectionViewCellViewModelService: CollectionViewCellModelService {
    
    private var service: Service
    
    var name: String {
        return service.name
    }
    
    var image: String {
        return service.image
    }
    
    init(service: Service) {
        self.service = service
    }
}
