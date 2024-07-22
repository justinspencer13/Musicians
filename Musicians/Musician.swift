//
//  Musician.swift
//  Musicians
//
//  Created by Justin Spencer on 7/22/24.
//

import Foundation
import SwiftData

@Model
class Musician {
   
    var name: String
    var genre: String
    
    init(name: String, genre: String) {
        self.name = name
        self.genre = genre
    }
}

