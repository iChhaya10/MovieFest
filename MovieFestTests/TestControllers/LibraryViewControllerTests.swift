//
//  LibraryViewControllerTests.swift
//  MovieFestTests
//
//  Created by Chhaya on 6/1/22.
//

import XCTest
@testable import MovieFest
class LibraryViewControllerTests: XCTestCase {
    var sut: LibraryViewController!
    override func setUpWithError() throws {
        sut = (UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "LibraryViewControllerID") as! LibraryViewController)
        _ = sut.view
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    //MARK: Components not nil
    func testLibraryVC_TableViewShouldNotBeNil() {
        XCTAssertNotNil(sut.libraryTableView)
    }
    
    func testLibraryVC_SetsDataTableViewSource() {
        XCTAssertNotNil(sut.libraryTableView.dataSource)
        XCTAssertTrue(sut.libraryTableView.dataSource is LibraryDataService)
    }
    
    func testLibraryVC_SetsTableViewDelegate() {
        XCTAssertNotNil(sut.libraryTableView.delegate)
        XCTAssertTrue(sut.libraryTableView.delegate is LibraryDataService)
    }
    
    //MARK: Equatable
    func testLibraryService_IsSingleServiceObject() {
        XCTAssertEqual(sut.libraryTableView.delegate as! LibraryDataService, sut.libraryTableView.dataSource as! LibraryDataService)
    }

}
