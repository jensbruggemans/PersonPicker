//
//  Person.swift
//  PersonPicker
//
//  Created by Jens Bruggemans on 18/03/16.
//  Copyright © 2016 jens. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String
    var info: String
    var favoriteColor: UIColor
    
    init(name: String, info: String, favoriteColor: UIColor) {
        self.name = name
        self.info = info
        self.favoriteColor = favoriteColor
        
        super.init()
    }
}
