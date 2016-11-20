//
//  Movie.swift
//  BCS410FinalProject
//
//  Created by Brian Monaghan on 11/20/16.
//  Copyright © 2016 Brian Monaghan. All rights reserved.
//

import Foundation

class Movie {
    var movieTitle = ""
    
    func getTitle () -> String? {
        return self.movieTitle
    }
    
    func setTitle(title: String) {
        self.movieTitle = title
    }
}