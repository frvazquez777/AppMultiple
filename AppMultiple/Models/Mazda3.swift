//
//  Mazda3.swift
//  AppMultiple
//
//  Created by Fredy Roman Vazquez Geronio on 2/1/19.
//  Copyright © 2019 Fredy Roman Vazquez Geronimo. All rights reserved.
//

import Foundation

class Mazda3: Mazda {

    var loadPercentage = 50
    
    func recargar() -> Int {
        loadPercentage = 100
        return loadPercentage
    }
    
}
