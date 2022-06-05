//
//  Movie.swift
//  MovieFest
//
//  Created by Chhaya on 5/31/22.
//

import Foundation
import UIKit

struct Movie: Equatable {
    var title: String
    var releaseDate: String?
    
    init(title: String, releaseDate: String? = nil) {
        self.title = title
        self.releaseDate = releaseDate
    }
}

func ==(lhs: Movie, rhs: Movie) -> Bool {
    if lhs.title != rhs.title {
        return false
    }
    
    if lhs.releaseDate != rhs.releaseDate {
        return false
    }
    
    return true
}
