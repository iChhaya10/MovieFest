//
//  MovieManagerTests.swift
//  MovieFestTests
//
//  Created by Chhaya on 5/31/22.
//

import XCTest
@testable import MovieFest
class MovieManagerTests: XCTestCase {

    var sut: MoviesManager!
    let testMovieRomantic = Movie(title: "DDLJ")
    let testMovieRomantic2 = Movie(title: "DDLJ")
    let testMovieSciFi = Movie(title: "RaOne")
    let testMovieThriller = Movie(title: "Knives Out")
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = MoviesManager()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInit_MoviesVar_ReturnsZero() {
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 0)
    }
    
    //MARK: Adding
    func testAdd_MoviesToSee_ReturnsOne() {
        sut.addMovie(movie: testMovieRomantic)
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }
    
    func testQuery_ReturnMovieAtIndex() {
        sut.addMovie(movie: testMovieSciFi)
        let movieQueries = sut.movieAtIndex(index: 0)
        XCTAssertEqual(testMovieSciFi.title, movieQueries.title)
    }
    
    //MARK: Checking off
    func testCheckOffMovie_UpdatesMovieManagerCounts() {
        sut.addMovie(movie: testMovieSciFi)
        sut.checkOffAtindex(index: 0)
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 1)
    }
    
    func testCheckOff_RemovesMovieFromArray() {
        sut.addMovie(movie: testMovieRomantic)
        sut.addMovie(movie: testMovieSciFi)
        sut.checkOffAtindex(index: 0)
        XCTAssertEqual(sut.movieAtIndex(index: 0).title, testMovieSciFi.title)
    }
    
    func testCheckOffMovie_ReturnsMovieAtIndex() {
        sut.addMovie(movie: testMovieThriller)
        sut.checkOffAtindex(index: 0)
        let testMovie = sut.checkedOffMovieAtIndex(index: 0)
        XCTAssertEqual(testMovie.title, testMovieThriller.title)
    }
    
    //MARK: EQUATABLE
    func testEquatable_ReturnsTrue() {
        let movie1 = testMovieRomantic
        let movie2 = testMovieRomantic2

        XCTAssertEqual(movie1, movie2)
    }
    
    func testEquatable_ReturnsNotEqual_ForDifferentTitles() {
        let movie1 = testMovieRomantic
        let movie2 = testMovieThriller
        
        XCTAssertNotEqual(movie1, movie2)
    }
    func testEquatable_ReturnsNotEqual_ForDifferentReleaseDates() {
        let movie1 = Movie(title: "Action", releaseDate: "1990")
        let movie2 = Movie(title: "Action", releaseDate: "1991")
        XCTAssertNotEqual(movie1, movie2)
    }
    
    func testClearArrays_ReturnsArrayCountsOfZero() {
        
        sut.addMovie(movie: testMovieThriller)
        sut.addMovie(movie: testMovieSciFi)
        sut.checkOffAtindex(index: 0)
        
        XCTAssertEqual(sut.moviesToSeeCount, 1)
        XCTAssertEqual(sut.moviesSeenCount, 1)
        
        sut.clearArrays()
        
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 0)
        
    }
    
    //MARK: Duplication
    func testDuplicateMovies_ShouldNotBeAddedToArray() {
        sut.addMovie(movie: testMovieSciFi)
        sut.addMovie(movie: testMovieSciFi)
        
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }
    
    
}
