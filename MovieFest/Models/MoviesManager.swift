//
//  MoviesManager.swift
//  MovieFest
//
//  Created by Chhaya on 5/31/22.
//

import Foundation

class MoviesManager {
    var moviesToSeeCount : Int {return arrMoviesToSee.count}
    var moviesSeenCount : Int {return arrMoviesSeen.count}
    
    var arrMoviesToSee = [Movie]()
    var arrMoviesSeen = [Movie]()
    
    func addMovie(movie: Movie) {
        if !arrMoviesToSee.contains(movie){
            arrMoviesToSee.append(movie)
        }
        
    }
    
    func movieAtIndex(index: Int) -> Movie {
        return arrMoviesToSee[index]
    }
    
    func checkOffAtindex(index: Int) {
        guard index < moviesToSeeCount else {return}
        let removedMovie = arrMoviesToSee.remove(at: index)
        arrMoviesSeen.append(removedMovie)
    }
    
    func checkedOffMovieAtIndex(index: Int) -> Movie {
        return arrMoviesSeen[index]
    }
    
    func clearArrays() {
        arrMoviesSeen.removeAll()
        arrMoviesToSee.removeAll()
    }
}
